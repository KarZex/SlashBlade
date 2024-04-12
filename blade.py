import json
import csv
import numpy as npy
import os

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

row_count = 0

saA_path = open("A.json","r")
saA = json.load(saA_path)
saB_path = open("B.json","r")
saB = json.load(saB_path)
saC_path = open("C.json","r")
saC = json.load(saC_path)

for row in csv_reader:
    row_count += 1
    if row_count == target:

        ##########################
        # Blade Data
        ##########################

        blade_id = row[1]
        blade_durability = int(row[2])
        blade_damage = int(row[3])
        blade_around = int(row[4])
        blade_sa = row[5]

        #enchant "< enchant_id >-< level >"
        Enchants = []
        for i in range(6,11):
            parts = row[i].split('-')
            Enchants.append(parts)


        ##########################
        # Behavior Pack
        ##########################

        #item/blade

        #name
        item["minecraft:item"]["description"]["identifier"] = "blade:{}".format(blade_id)
        #png icon
        item["minecraft:item"]["components"]["minecraft:icon"]["texture"] = blade_id
        #durability
        item["minecraft:item"]["components"]["minecraft:durability"]["max_durability"] = blade_durability
        #melee damage
        item["minecraft:item"]["components"]["minecraft:damage"] = blade_damage
        #around damage
        item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][0]["run_command"]["command"][1] = "execute @s ~~~ damage @e[r=3,family=monster] {} override entity @s".format(blade_around)
        #sa
        if blade_sa =="A":
            item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"].append(saA)
            item["minecraft:item"]["components"]["minecraft:foil"] = True
        elif blade_sa =="B":
            item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"].append(saB)
            item["minecraft:item"]["components"]["minecraft:foil"] = True
        elif blade_sa =="C":
            item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"].append(saC)
            item["minecraft:item"]["components"]["minecraft:foil"] = True
        
        #output
        item_path = "BP/items/blade/{}.json".format(blade_id)
        with open(item_path,'w') as f:
            json.dump(item,f,indent=4)
        

        #function

        with open('BP/functions/bladestart.mcfunction','a') as f:
            f.write("execute @a[hasitem={{location=slot.weapon.mainhand,item=blade:{}}}] ~~~ function blade/{}".format(blade_id))

        with open('BP/functions/blade/{}.mcfunction'.format(blade_id),'w') as f:
            for i in Enchants:
                f.write("enchant @s {0} {1}".format(Enchants[i][0],Enchants[i][1]))

        ##########################
        # Resource Pack
        ##########################


        
