#scoreboard objectives add rmas dummy
tag @s[scores={mas=..4},hasitem={item=zex:sa,quantity=1..}] add reload
clear @s[scores={mas=..4},hasitem={item=zex:sa,quantity=1..}] zex:sa 1

scoreboard players add @s[tag=reload] mas 1

execute as @s[tag=reload] run playsound reload.mas @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 10