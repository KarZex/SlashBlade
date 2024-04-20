tag @s[hasitem={item=zex:ha,quantity=1},tag=!reload] add reload1
scoreboard players add @s[tag=reload1] r3030 1
clear @s[tag=reload1] zex:ha 0 1
tag @s[tag=reload1] add reload
tag @s[tag=reload1] remove reload1