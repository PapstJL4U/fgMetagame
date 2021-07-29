"""Loads all matchup data of streetfighter from the offical website and puts them into .csv files"""
from bs4 import BeautifulSoup
import urllib.request, sfchars

year1 = (201610, 201611, 201612)
year2 = (201701, 201702, 201703, 201704, 201705, 201706, 201707, 201708, 201709, 201710, 201711, 201712)
year3 = (201801, 201802, 201803, 201804, 201805, 201806, 201807, 201808, 201809, 201810, 201811, 201812)
year4 = (201901, 201902, 201903, 201904, 201905, 201906, 201907, 201908, 201909, 201910, 201911, 201912)
year5 = (202001, 202002, 202003, 202004, 202005, 202006, 202007, 202008, 202009, 202010, 202011, 202012)
year6 = (202101, 202102, 202103, 202104, 202105, 202106)#, 202107, 202108, 202109, 202110, 202111, 202112)
total = year1 + year2 + year3 + year4 + year5 + year6
streetfighter5="https://game.capcom.com/cfn/sfv/stats/dia/"

sf5_month = year4 + year5 +year6
for month in total:
    #get url and create readable html to extract matchup data
    url = urllib.request.urlopen(streetfighter5+str(month))
    soup = BeautifulSoup(url, "html.parser")
    data = soup.table
    
    #find html table with data
    table = soup.find("table", {"id": "tbl"})
    tbody = soup.find("tbody")
    all_chars = tbody.findAll("tr")

    with open('StreetFighter5-'+str(month)+'.csv','w', encoding="utf-8") as f:
        
        for i,char in enumerate(all_chars):

            row = char.findAll("td")
            output = ""        

            for j, cell in enumerate(row):
                #print(cell.get_text())

                #Find the name of the character (hidden in the image path name as 1-3 letters)
                if cell.find("img") != None:
                    name = cell.find("img")["src"]
                    eindex = name.index(".png")
                    bindex = len(name) - name[::-1].index("/")
                    name = sfchars.translation_dic[name[bindex:eindex]]
                    #print(name+" ", end='')
                    output+=name

                #mirror matchups are shown as "-" and not as 0.5
                elif cell.get_text() == "-":
                    #print(str(5.000)+" ", end='')
                    output+=",0.500"

                #change X.yz to 0.xyz
                else:
                    #print(cell.get_text()+" ", end='')
                    output+=","+str(round(0.1*float(cell.get_text()),3))

            #last entry avoids empty line
            if i+1==len(all_chars):
                f.write('{}'.format(output))               
            else:
                f.write('{}\n'.format(output))
    print("Done: "+str(month))