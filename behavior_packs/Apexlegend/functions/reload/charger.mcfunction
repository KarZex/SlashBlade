tag @s[scores={charge=0},hasitem={item=zex:sr,quantity=8..}] add reload
clear @s[scores={charge=0},hasitem={item=zex:sr,quantity=8..}] zex:sr 0 8
tag @s[scores={charge=1},hasitem={item=zex:sr,quantity=7..}] add reload
clear @s[scores={charge=1},hasitem={item=zex:sr,quantity=7..}] zex:sr 0 7
tag @s[scores={charge=2},hasitem={item=zex:sr,quantity=6..}] add reload
clear @s[scores={charge=2},hasitem={item=zex:sr,quantity=6..}] zex:sr 0 6
tag @s[scores={charge=3},hasitem={item=zex:sr,quantity=5..}] add reload
clear @s[scores={charge=3},hasitem={item=zex:sr,quantity=5..}] zex:sr 0 5
tag @s[scores={charge=4},hasitem={item=zex:sr,quantity=4..}] add reload
clear @s[scores={charge=4},hasitem={item=zex:sr,quantity=4..}] zex:sr 0 4
tag @s[scores={charge=5},hasitem={item=zex:sr,quantity=3..}] add reload
clear @s[scores={charge=5},hasitem={item=zex:sr,quantity=3..}] zex:sr 0 3
tag @s[scores={charge=6},hasitem={item=zex:sr,quantity=2..}] add reload
clear @s[scores={charge=6},hasitem={item=zex:sr,quantity=2..}] zex:sr 0 2
tag @s[scores={charge=7},hasitem={item=zex:sr,quantity=1..}] add reload
clear @s[scores={charge=7},hasitem={item=zex:sr,quantity=1..}] zex:sr 0 1

scoreboard players set @s[scores={charge=0},tag=reload] reload 102
scoreboard players set @s[tag=reload] charge 8

execute as @s[tag=!reload] run function reload2/charger


execute as @s[tag=reload] run playsound reload.charge @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 80