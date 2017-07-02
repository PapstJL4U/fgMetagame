"""Loads all matchup data of streetfighter from the offical website and puts them into .csv files"""
from bs4 import BeautifulSoup
import urllib.request

streetfighter5="https://game.capcom.com/cfn/sfv/stats/dia/"

sf5_month = (201610,201611,201612,201701,201702,201703)
for month in sf5_month:
    #get url and create readable xml file to extract matchup data
    url = urllib.request.urlopen(streetfighter5+str(month))
    soup = BeautifulSoup(url, "lxml")
    data = soup.table
    #print(data.prettify()[0:])

    #chars = data.find_all("p", class_="charaName")
    chars = data.find_all("tr")
    try:
        path = 'StreetFighter5-'+str(month)+'.csv'
        file=open(path, "w")

        #Three characters have different names in japan and us, so we try to indentify them and give them global names
        for i in range(1,len(chars)):
            output=""
            if chars[i].find("p", class_="charaName").get_text()=="VEGA":
                output+="DICTATOR"
            elif chars[i].find("p", class_="charaName").get_text()=="BALROG":
                output+="CLAW"
            elif chars[i].find("p", class_="charaName").get_text()=="M.BISON":
                output+="BOXER"
            else:
                output+=chars[i].find("p", class_="charaName").get_text()
            
            row=chars[i].find_all("td")

            #A matchup with itself is 50:50 but the source does not specific this, but puts in a strange space symbol
            for j in range(1,len(row)-1):
                if row[j].get_text()==" ": #the space between the "" should be of type &nbsp; I had do copy&paste the type of space from the output. 
                    output+=",0.50"
                else:
                    output+=","+str(round(0.1*float(row[j].get_text()),2))

            file.write('{}\n'.format(output))
    except Exception:
        raise
    finally:
        file.close()

#access main function
#if __name__ == '__main__':
#    main()