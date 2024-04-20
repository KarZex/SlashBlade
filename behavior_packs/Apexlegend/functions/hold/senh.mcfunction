titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7§r"}]}
replaceitem entity @s[scores={casen=1..},tag=!reload] slot.weapon.mainhand 0 guntype:tsen