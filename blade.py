import json
import csv
import numpy as npy

target = int(input("the target"))

csv_path = open("blade.csv","r",encoding="utf_8")
csv_reader = csv.reader(csv_path)

item_path = open("blade.json","r")
item = json.load(item_path)

func_path = open("blade.mcfunction","r")

next(csv_reader)

row_count = 0

for row in csv_reader:
    row_count += 1
    if row_count == target:
        item["minecraft:item"]["description"]["identifier"] = "blade:{}".format(row[1])
        item["minecraft:item"]["components"]["minecraft:icon"]["texture"] = "{}".format(row[1])
        item["minecraft:item"]["components"]["minecraft:durability"]["max_durability"] = int(row[2])
        item["minecraft:item"]["components"]["minecraft:damage"] = int(row[3])
        item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][0]["run_command"]["command"][1] = "execute @s ~~~ damage @e[r=3,family=monster] {} override entity @s".format(row[4])
        json_str = json.dumps(item, indent=2)
        item_path = "{}.json".format(row[1])
        f = open(item_path,"w")
        f.write(json_str)
        f.close
        
