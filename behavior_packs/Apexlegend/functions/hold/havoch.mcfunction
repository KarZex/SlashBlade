titleraw @s[scores={havoc=1..}] actionbar {"rawtext":[{"text":"§aEnergy§r "},{"score":{"name":"@s","objective":"havoc"}},{"text":"/36"}]}
titleraw @s[scores={havoc=0}] actionbar {"rawtext":[{"text":"§aEnergy§r §4"},{"score":{"name":"@s","objective":"havoc"}},{"text":"/36§r"}]}

scoreboard objectives add hs3 dummy
playsound fire.havoca @a[scores={hs3=9},tag=hs]
scoreboard players remove @s[tag=hs] hs3 1
tag @s[scores={hs3=0}] add hs2