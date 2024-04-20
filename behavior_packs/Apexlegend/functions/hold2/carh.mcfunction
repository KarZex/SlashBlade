titleraw @s[scores={car=1..}] actionbar {"rawtext":[{"text":"§6Light§r "},{"score":{"name":"@s","objective":"car"}},{"text":"/27"}]}
titleraw @s[scores={car=0}] actionbar {"rawtext":[{"text":"§6Light§r §4"},{"score":{"name":"@s","objective":"car"}},{"text":"/27§r"}]}

execute as @s[hasitem={item=zex:ha,quantity=1..}] run replaceitem entity @s[scores={car=0},hasitem={item=zex:la,quantity=0},tag=!reload] slot.weapon.mainhand 0 gun:car