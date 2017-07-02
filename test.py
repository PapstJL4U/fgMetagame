import os

list = []
for file in os.listdir():
    if file.lower().endswith('.csv'):
        print(file)
        list.append(file)
