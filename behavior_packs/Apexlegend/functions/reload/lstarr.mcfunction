scoreboard objectives add rlstar dummy
tag @s add reload
execute as @s[tag=reload] run playsound reload.lstar @s
scoreboard players set @s[tag=reload] rlstar 52
effect @s[tag=reload] slowness 1 2