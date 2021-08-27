"""A new way to look at fighting game balance. https://github.com/Blinkity/metagame"""

import pandas
import seaborn as sns
import numpy as np
import pulp as plp
sns.set_context(context="paper", font_scale=0.8)
sns.set_style(style="darkgrid")
sns.set_color_codes(palette='dark')

def makeMatchups(allRanks, selfRanks):
    overall_beat_probs = (3.0/2.0)*selfRanks['beat_opponent_prob'] - 0.25
    overall_beat_probs.name = "overall_beat_opponent_prob"
    overall_beat_probs_df = pandas.DataFrame(overall_beat_probs)
    mergedRanks = allRanks.merge(overall_beat_probs_df, left_on='PLAYER_CHAR_COPY', right_index=True)
    specific_opponent_probs = 3*mergedRanks['beat_opponent_prob'] - 2*mergedRanks['overall_beat_opponent_prob']
    matchups = specific_opponent_probs.unstack()
    averagedMatchups = (matchups + (1 - matchups.T))/2.0
    return averagedMatchups

def setupBasicProblem(matrix):
    prob = plp.LpProblem("rock_paper_scissors", plp.LpMaximize)
    the_vars = np.append(matrix.index.values, (["w"]))
    lp_vars = plp.LpVariable.dicts("vrs", the_vars)
#First add the objective function.
    prob += plp.lpSum([lp_vars['w']])
#Now add the non-negativity constraints.
    for row_strat in matrix.index.values:
        prob += plp.lpSum([1.0 * lp_vars[row_strat]]) >= 0
#Now add the sum=1 constraint.
    prob += plp.lpSum([1.0 * lp_vars[x] for x in matrix.index.values]) == 1
#Now add the column payoff constraints
    for col_strat in matrix.columns.values:
        stratTerms = [matrix.loc[row_strat, col_strat] * lp_vars[row_strat] for row_strat in matrix.index.values]
        allTerms = stratTerms + [-1 * lp_vars['w']]
        prob += plp.lpSum(allTerms) >= 0
#now write it out and solve
    return prob, lp_vars

def solveGame(matrix):
    prob, lp_vars = setupBasicProblem(matrix)
    prob.writeLP("rockpaperscissors.lp")
    prob.solve()
#now prepare the value and mixed strategy
    game_val = plp.value(lp_vars['w'])
    strat_probs = {}
    for row_strat in matrix.index.values:
        strat_probs[row_strat] = plp.value(lp_vars[row_strat])
#and output it
    return prob, game_val, strat_probs

def solveGameWithRowConstraint(matrix, rowname, constraint):
    prob, lp_vars = setupBasicProblem(matrix)
#add the additional constraint
    prob += plp.lpSum(lp_vars[rowname]) == constraint
    prob.writeLP("rockpaperscissors.lp")
    prob.solve()
#now prepare the value and mixed strategy
    game_val = plp.value(lp_vars['w'])
    strat_probs = {}
    for row_strat in matrix.index.values:
        strat_probs[row_strat] = plp.value(lp_vars[row_strat])
#and output it
    return prob, game_val, strat_probs

def getWinRates(rowname,matrix,division=10):
    """
    numpy.linspace(start, stop, num=50, endpoint=True, retstep=False, dtype=None, axis=0)
    startarray_like

    start The starting value of the sequence.
    stoparray_like

    stop The end value of the sequence, unless endpoint is set to False. In that case,
    the sequence consists of all but the last of num + 1 evenly spaced samples, so that stop is excluded.
    Note that the step size changes when endpoint is False.
    numint, optional

    num Number of samples to generate. Default is 50. Must be non-negative.

    """
    probs = np.linspace(0,1,division+1)
    return pandas.Series([solveGameWithRowConstraint(matrix, rowname, p)[1] for p in probs], index=probs, name=rowname)

def getAllWinRates(matrix,division=10):
    return pandas.concat([getWinRates(row,matrix,division) for row in matrix.index.values], axis=1)   

def plotIntervals(winRates,doSort,threshold):
    intervals = winRates.apply(lambda x: pandas.Series([x[x >= threshold].first_valid_index(), x[x >= threshold].last_valid_index()], index = ['minv','maxv'])).T
    intervals['bar1'] = intervals['minv']
    intervals['bar2'] = intervals['maxv'] - intervals['minv']
    intervals['bar3'] = 1 - (intervals['bar1'] + intervals['bar2'])
    #Maybe we want to sort by max, min values, or maybe we just want to keep it in its matchup-chart-specified order.
    if doSort:
        intervals = intervals.sort_values(by=['maxv','minv'])
    else: #else reverse, it's weird
        intervals = intervals.reindex(index=intervals.index[::-1])
    img = intervals[['bar1','bar2','bar3']].plot(kind='barh',stacked=True, color=['w','g','w'], xticks = np.linspace(0,1,21), legend=False)
    return img

def makeMatchupsFromOverallBeatProbs(allRanks, overall_beat_probs):
    overall_beat_probs.name = "overall_beat_opponent_prob"
    overall_beat_probs_df = pandas.DataFrame(overall_beat_probs)
    mergedRanks = allRanks.merge(overall_beat_probs_df, left_on='PLAYER_CHAR_COPY', right_index=True)
    specific_opponent_probs = 3*mergedRanks['beat_opponent_prob'] - 2*mergedRanks['overall_beat_opponent_prob']
    matchups = specific_opponent_probs.unstack()
#    averagedMatchups = (matchups + (1 - matchups.T))/2.0
#    return averagedMatchups
#can't average, we're going for asymmetry
    return matchups

def main():
    #matplotlib.use('PS')
    inputfile = "matchups.csv"
    outputfile = inputfile[0:-4]+" Bounds"+".pdf"
    matchups = pandas.read_csv(inputfile, header=None, index_col = 0)
    matchups.index.name = "row_char"
    matchups.columns = matchups.index.values #need to use values so we can copy it and have two different names
    matchups.columns.name = "col_char"
    matchupPayoffs = 2*matchups - 1
    allWinRates = getAllWinRates(matchupPayoffs,100)
    #Plot will output to postscript file
    img = plotIntervals(allWinRates,True,-0.02)
    img.get_figure().savefig(outputfile)


def main_para(data):
    """enables the use of this module with parameters from the outside"""
    samples = 100
    inputfile = data
    outputfile = inputfile[0:-4]+"_Bounds"+"_samples_"+str(samples)+".pdf"
    matchups = pandas.read_csv(inputfile, header=None, index_col = 0)
    matchups.index.name = "row_char"
    matchups.columns = matchups.index.values #need to use values so we can copy it and have two different names
    matchups.columns.name = "col_char"
    matchupPayoffs = 2*matchups - 1
    allWinRates = getAllWinRates(matchupPayoffs,samples)
    #Plot will output to postscript file
    img = plotIntervals(allWinRates,True,-0.02)
    img.get_figure().savefig(outputfile)

if __name__ == "__main__":
    main()