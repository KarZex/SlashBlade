#scoreboard objectives add rr3030 dummy
tag @s[scores={r3030=..10},hasitem={item=zex:ha,quantity=2..}] add reload
clear @s[scores={r3030=..10},hasitem={item=zex:ha,quantity=2..}] zex:ha 0 2
tag @s[scores={r3030=11},hasitem={item=zex:ha,quantity=1..}] add reload
clear @s[scores={r3030=11},hasitem={item=zex:ha,quantity=1..}] zex:ha 0 1

scoreboard players add @s[tag=reload] r3030 2
scoreboard players set @s[scores={r3030=12..}] r3030 12

execute as @s[tag=reload] run playsound reload.r3030 @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 10
