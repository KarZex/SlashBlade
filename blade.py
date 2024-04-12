import json
import csv
import numpy as npy

target = int(input("the target"))

#data
csv_path = open("blade.csv","r",encoding="utf_8")
csv_reader = csv.reader(csv_path)

#item/blade
item_path = open("blade.json","r")
item = json.load(item_path)

#function/blade
func_path = open("blade.mcfunction","r")

#start with 2nd row
next(csv_reader)

row_count = 0
try:
    saA_path = open("A.json","r")
    saA = json.load(saA_path)
    saB_path = open("B.json","r")
    saB = json.load(saB_path)
    saC_path = open("C.json","r")
    saC = json.load(saC_path)
    saD_path = open("D.json","r")
    saD = json.load(saD_path)
except:
    print("not found file")

for row in csv_reader:
    row_count += 1
    if row_count == target:

        ##########################
        # Behavior Pack
        ##########################

        #item/blade

        #name
        item["minecraft:item"]["description"]["identifier"] = "blade:{}".format(row[1])
        #png icon
        item["minecraft:item"]["components"]["minecraft:icon"]["texture"] = "{}".format(row[1])
        #durability
        item["minecraft:item"]["components"]["minecraft:durability"]["max_durability"] = int(row[2])
        #melee damage
        item["minecraft:item"]["components"]["minecraft:damage"] = int(row[3])
        #around damage
        item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][0]["run_command"]["command"][1] = "execute @s ~~~ damage @e[r=3,family=monster] {} override entity @s".format(row[4])
        #sa
        if row[5] =="A":
            item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][1] = saA
        elif row[5] =="B":
            item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][1] = saB
        elif row[5] =="C":
            item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][1] = saC
        #output
        json_str = json.dumps(item, indent=2)
        item_path = "BP/item/blade/{}.json".format(row[1])
        f = open(item_path,"w")
        f.write(json_str)
        f.close

        ##########################
        # Resource Pack
        ##########################


        
