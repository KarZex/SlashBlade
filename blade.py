import json
import csv
import numpy as npy
import shutil

target = int(input("the target"))

#data
csv_path = open("blade.csv","r",encoding="utf_8")
csv_reader = csv.reader(csv_path)

#item/blade
item_path = open("blade.json","r")
item = json.load(item_path)

#function/blade
func_path = open("blade.mcfunction","r")

#entity/player.json
player_path = open("RP/entity/player.json","a")
player = json.load(player_path)

#render_controllers/bladeitem.json
bladeitem_path = open("RP/render_controllers/bladeitem.json","a")
bladeitem = json.load(bladeitem_path)

#render_controllers/blades.render_controllers.json
blades_render_controllers_path = open("RP/render_controllers/blades.render_controllers.json","a")
blades_render_controllers = json.load(blades_render_controllers_path)

#item_texture
item_texture_path = open("RP/textures/item_texture.json","a")
item_texture = json.load(player_path)



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
        Levels = []
        for i in range(6,11):
            if(row[i] != ""):
                parts = row[i].split('-')
                Enchants.append(parts[0])
                Levels.append(parts[1])


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
            f.write("\nexecute @a[hasitem={{location=slot.weapon.mainhand,item=blade:{0} }}] ~~~ function blade/{0}\n".format(blade_id))

        with open('BP/functions/blade/{}.mcfunction'.format(blade_id),'w') as f:
            for i in range(len(Enchants)):
                f.write("enchant @s {0} {1}\n".format(Enchants[i],Levels[i]))

        ##########################
        # Resource Pack
        ##########################

        #player.json

        player["minecraft:client_entity"]["textures"]["{}".format(blade_id)] = "textures/models/{}".format(blade_id)
        player["minecraft:client_entity"]["geometry"]["{}".format(blade_id)] = "geometry.{}".format(blade_id)
        player["minecraft:client_entity"]["scripts"]["pre_animation"][10].replace(";"," query.get_equipped_item_name('main_hand') == '{}' || ;".format(blade_id))
        player["minecraft:client_entity"]["render_controllers"].append({ "controller.render.player.{}".format(blade_id): "query.get_equipped_item_name=='{}'".format(blade_id) }),


        #render_controllers

        blades_render_controllers["render_controllers"]["controller.render.player.{}".format(blade_id)] = {"geometry": "Geometry.{}".format(blade_id),"materials": [ { "*": "Material.default" } ],"textures": [ "Texture.{}".format(blade_id) ]}

        bladeitem["render_controllers"]["controller.render.bladeitem"]["arrays"]["geometries"]["Array.item_geo"].append("Geometry.{}".format(blade_id))
        bladeitem["render_controllers"]["controller.render.bladeitem"]["arrays"]["textures"]["Array.item_texture"].append("Geometry.{}".format(blade_id))

        #geometries
        shutil.copy('texture/model/{}.json'.format(blade_id),'RP/models/entity/blade')

        #icon
        shutil.copy('texture/icon/{}.png'.format(blade_id),'RP/textures/blade')
        item_texture["texture_data"]["{}".format(blade_id)] = {"textures": "textures/blade/{}.png"}


player["minecraft:client_entity"]["scripts"]["pre_animation"][10].replace("|| ;",";")