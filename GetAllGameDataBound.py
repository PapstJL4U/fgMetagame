"""Generates Fighting Game bounds for every .cvs file in the local directory"""
import os
import Fighting_games_bounds as fgb

folder = "anygame"

def anygame():
    """create a list of csv files with matchupdata"""
    list = []
    print('Using the following files:')
    for file in os.listdir(folder):
        if file.lower().endswith('.csv'):
            list.append(file)
            print(file)
    return list , folder

def streetfighter():
    """create a list of csv files with matchupdata"""
    list = []
    print('Using the following files:')
    for file in os.listdir("Street Fighter 5"):
        if file.lower().endswith('.csv') and "streetfighter" in file.lower():
            list.append(file)
            print(file)
    return list, "Street Fighter 5"

def guiltygear():
    """create a list of csv files with matchupdata"""
    list = []
    print('Using the following files:')
    for file in os.listdir("Guilty Gear"):
        if file.lower().endswith('.csv'):
            list.append(file)
            print(file)
    return list, "Guilty Gear"

def main():
    csv_list, folder = streetfighter()

    for csv in csv_list:
        print(csv)
        fgb.main_para(folder+os.sep+csv)
        print('Finished: '+csv)

    print('Finished with everything.')

if __name__ == "__main__":
    main()