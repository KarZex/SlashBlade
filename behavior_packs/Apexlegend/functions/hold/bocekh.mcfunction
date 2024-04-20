titleraw @s[scores={boceka=1..}] actionbar {"rawtext":[{"text":"§cBocek§r "},{"score":{"name":"@s","objective":"boceka"}}]}
titleraw @s[scores={boceka=0}] actionbar {"rawtext":[{"text":"§cBocek§r §4"},{"score":{"name":"@s","objective":"boceka"}}]}

scoreboard players add @s[tag=bocek,scores={bocek=0..}] bocek 1
