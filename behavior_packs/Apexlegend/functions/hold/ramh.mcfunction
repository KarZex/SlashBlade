titleraw @s[scores={ram=1..}] actionbar {"rawtext":[{"text":"§cRampage§r "},{"score":{"name":"@s","objective":"ram"}},{"text":"/40 "},{"score":{"name":"@s","objective":"rama"}}]}
titleraw @s[scores={ram=0}] actionbar {"rawtext":[{"text":"§cRampage§r §4"},{"score":{"name":"@s","objective":"ram"}},{"text":"/40§r "},{"score":{"name":"@s","objective":"rama"}}]}
replaceitem entity @s[scores={caram=1..},tag=!reload] slot.weapon.mainhand 0 guntype:tram