import json
import csv
import shutil

target = 1

#data
csv_path = open("newblade.csv","r",encoding="utf_8")
csv_reader = csv.reader(csv_path)

#item/blade
item_path = open("blade.json","r")
item = json.load(item_path)

#function/blade
func_path = open("blade.mcfunction","r")

#entity/player.json
player_path = open("RP/entity/player.json","r")
player = json.load(player_path)

#render_controllers/bladeitem.json
bladeitem_path = open("RP/render_controllers/bladeitem.json","r")
bladeitem = json.load(bladeitem_path)

#render_controllers/blades.render_controllers.json
blades_render_controllers_path = open("RP/render_controllers/blades.render_controllers.json","r")
blades_render_controllers = json.load(blades_render_controllers_path)

#item_texture
item_texture_path = open("RP/textures/item_texture.json","r")
item_texture = json.load(item_texture_path)



row_count = 0

saA_path = open("A.json","r")
saA = json.load(saA_path)
saB_path = open("B.json","r")
saB = json.load(saB_path)
saC_path = open("C.json","r")
saC = json.load(saC_path)
saD_path = open("D.json","r")
saD = json.load(saD_path)

for row in csv_reader:

    if row_count == target:

        ##########################
        # Blade Data
        ##########################

        blade_name = row[0]
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
        
        blade_effect = int(row[11])

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
        item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][0]["sequence"][0]["run_command"]["command"].append("execute @s[scores={blade=..19}] ~~~ damage @e[r=3,family=monster] 1 override entity @s")
        item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][0]["sequence"][0]["run_command"]["command"].append("execute @s[scores={{blade=20..39}}] ~~~ damage @e[r=3,family=monster] {} override entity @s".format(blade_around))
        item["minecraft:item"]["events"]["zex:on_use"]["sequence"][0]["sequence"][0]["sequence"][0]["run_command"]["command"].append("execute @s[scores={{blade=40..}}] ~~~ damage @e[r=3,family=monster] {} override entity @s".format(blade_around + 2))
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
        with open('BP/items/blade/{}.json'.format(blade_id),'w') as f:
            json.dump(item,f,indent=4)
        
        item_path = open("blade.json","r")
        item = json.load(item_path)
        

        #function

        with open('BP/functions/bladestart.mcfunction','a') as f:
            f.write("\nexecute @a[hasitem={{location=slot.weapon.mainhand,item=blade:{0} }}] ~~~ function blade/{0}\n".format(blade_id))

        with open('BP/functions/blade/{}.mcfunction'.format(blade_id),'w') as f:
            f.write("effect @s[scores=blade=..19] weakness 1 0\n")
            if(blade_effect == 1): f.write("effect @s[scores=blade=40..] strength 1 1\n")
            for i in range(len(Enchants)):
                f.write("enchant @s[scores={{blade=40..}}] {0} {1}\n".format(Enchants[i],Levels[i]))

        ##########################
        # Resource Pack
        ##########################

        #player.json

        player["minecraft:client_entity"]["description"]["textures"]["{}".format(blade_id)] = "textures/models/{}".format(blade_id)
        player["minecraft:client_entity"]["description"]["geometry"]["{}".format(blade_id)] = "geometry.{}".format(blade_id)

        new_blade = player["minecraft:client_entity"]["description"]["scripts"]["pre_animation"][10]
        new_blade = new_blade.replace(";"," query.get_equipped_item_name('main_hand') == '{}' || ;".format(blade_id))
        player["minecraft:client_entity"]["description"]["scripts"]["pre_animation"][10] = new_blade
        player["minecraft:client_entity"]["description"]["render_controllers"].append({ "controller.render.player.{}".format(blade_id): "query.get_equipped_item_name=='{}'".format(blade_id) })


        #render_controllers

        blades_render_controllers["render_controllers"]["controller.render.player.{}".format(blade_id)] = {"geometry": "Geometry.{}".format(blade_id),"materials": [ { "*": "Material.default" } ],"textures": [ "Texture.{}".format(blade_id) ]}

        bladeitem["render_controllers"]["controller.render.bladeitem"]["arrays"]["geometries"]["Array.item_geo"].append("Geometry.{}".format(blade_id))
        bladeitem["render_controllers"]["controller.render.bladeitem"]["arrays"]["textures"]["Array.item_texture"].append("Texture.{}".format(blade_id))

        
        #geometries
        shutil.copy('texture/model/{}.json'.format(blade_id),'RP/models/entity/blade')

        #icon
        shutil.copy('texture/icon/{}.png'.format(blade_id),'RP/textures/blade')
        item_texture["texture_data"]["{}".format(blade_id)] = {"textures": "textures/blade/{}.png"}

        #name
        with open('RP/texts/ja_JP.lang','a') as f:
            f.write("\nitem.blade:{0}={1}".format(blade_id,blade_name))

        
    
    row_count += 1


###################
#Saving
###################

new_blade = player["minecraft:client_entity"]["description"]["scripts"]["pre_animation"][10]
new_blade = new_blade.replace("|| ;",";")
player["minecraft:client_entity"]["description"]["scripts"]["pre_animation"][10] = new_blade

with open("RP/entity/player.json",'w') as f:
    json.dump(player,f,indent=4)
    
with open("RP/render_controllers/bladeitem.json",'w') as f:
    json.dump(bladeitem,f,indent=4)

with open("RP/render_controllers/blades.render_controllers.json",'w') as f:
    json.dump(blades_render_controllers,f,indent=4)

with open("RP/textures/item_texture.json",'w') as f:
    json.dump(item_texture,f,indent=4)


