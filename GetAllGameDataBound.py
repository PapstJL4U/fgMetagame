"""Generates Fighting Game bounds for every .cvs file in the local directory"""
import os
import Fighting_games_bounds as fgb

def filelist():
    """create a list of csv files with matchupdata"""
    list = []
    print('Using the following files:')
    for file in os.listdir():
        if file.lower().endswith('.csv') and "streetfighter" in file.lower():
            list.append(file)
            print(file)
    return list

def main():
    csv_list = filelist()
    for csv in csv_list:
        print(csv)
        fgb.main_para(csv)
        print('Finished: '+csv)

    print('Finished with everything.')

if __name__ == "__main__":
    main()