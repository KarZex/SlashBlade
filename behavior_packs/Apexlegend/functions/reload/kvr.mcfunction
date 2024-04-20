execute as @s[scores={kv=0}] run tag @s[scores={kva=4..}] add reload
execute as @s[scores={kv=0}] run scoreboard players remove @s[scores={kva=4..}] kva 4
execute as @s[scores={kv=1}] run tag @s[scores={kva=3..}] add reload
execute as @s[scores={kv=1}] run scoreboard players remove @s[scores={kva=3..}] kva 3
execute as @s[scores={kv=2}] run tag @s[scores={kva=2..}] add reload
execute as @s[scores={kv=2}] run scoreboard players remove @s[scores={kva=2..}] kva 2
execute as @s[scores={kv=3}] run tag @s[scores={kva=1..}] add reload
execute as @s[scores={kv=3}] run scoreboard players remove @s[scores={kva=1..}] kva 1

scoreboard players set @s[scores={kv=0},tag=reload] reload 86
scoreboard players set @s[tag=reload] kv 4

execute as @s[tag=!reload] run function reload2/kvr

execute as @s[tag=reload] run playsound reload.kv @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 64
effect @s[tag=reload] slowness 2 2