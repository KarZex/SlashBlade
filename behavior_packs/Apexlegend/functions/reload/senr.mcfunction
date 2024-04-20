tag @s[scores={sen=0},hasitem={item=zex:sr,quantity=7..}] add reload
clear @s[scores={sen=0},hasitem={item=zex:sr,quantity=7..}] zex:sr 0 7
tag @s[scores={sen=1},hasitem={item=zex:sr,quantity=6..}] add reload
clear @s[scores={sen=1},hasitem={item=zex:sr,quantity=6..}] zex:sr 0 6
tag @s[scores={sen=2},hasitem={item=zex:sr,quantity=5..}] add reload
clear @s[scores={sen=2},hasitem={item=zex:sr,quantity=5..}] zex:sr 0 5
tag @s[scores={sen=3},hasitem={item=zex:sr,quantity=4..}] add reload
clear @s[scores={sen=3},hasitem={item=zex:sr,quantity=4..}] zex:sr 0 4
tag @s[scores={sen=4},hasitem={item=zex:sr,quantity=3..}] add reload
clear @s[scores={sen=4},hasitem={item=zex:sr,quantity=3..}] zex:sr 0 3
tag @s[scores={sen=5},hasitem={item=zex:sr,quantity=2..}] add reload
clear @s[scores={sen=5},hasitem={item=zex:sr,quantity=2..}] zex:sr 0 2
tag @s[scores={sen=6},hasitem={item=zex:sr,quantity=1..}] add reload
clear @s[scores={sen=6},hasitem={item=zex:sr,quantity=1..}] zex:sr 0 1

scoreboard players set @s[scores={sen=0},tag=reload] reload 80
scoreboard players set @s[tag=reload] sen 7

execute as @s[tag=!reload] run function reload2/senr

execute as @s[tag=reload] run playsound reload.sen @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 60
effect @s[tag=reload] slowness 2 2