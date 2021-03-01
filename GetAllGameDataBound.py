"""Generates Fighting Game bounds for every .cvs file in the local directory"""
import os
import Fighting_games_bounds as fgb

def streetfighter():
    """create a list of csv files with matchupdata"""
    list = []
    print('Using the following files:')
    for file in os.listdir("Street Fighter 5"):
        if file.lower().endswith('.csv') and "streetfighter" in file.lower():
            list.append(file)
            print(file)
    return list

def guiltygear():
    """create a list of csv files with matchupdata"""
    list = []
    print('Using the following files:')
    for file in os.listdir("Guilty Gear"):
        if file.lower().endswith('.csv'):
            list.append(file)
            print(file)
    return list

def main():
    csv_list = streetfighter()
    for csv in csv_list:
        print(csv)
        fgb.main_para("Street Fighter 5"+os.sep+csv)
        print('Finished: '+csv)

    print('Finished with everything.')

if __name__ == "__main__":
    main()