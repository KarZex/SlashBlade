tag @s[scores={long=0},hasitem={item=zex:sr,quantity=12..}] add reload
clear @s[scores={long=0},hasitem={item=zex:sr,quantity=12..}] zex:sr 0 12
tag @s[scores={long=1},hasitem={item=zex:sr,quantity=11..}] add reload
clear @s[scores={long=1},hasitem={item=zex:sr,quantity=11..}] zex:sr 0 11
tag @s[scores={long=2},hasitem={item=zex:sr,quantity=10..}] add reload
clear @s[scores={long=2},hasitem={item=zex:sr,quantity=10..}] zex:sr 0 10
tag @s[scores={long=3},hasitem={item=zex:sr,quantity=9..}] add reload
clear @s[scores={long=3},hasitem={item=zex:sr,quantity=9..}] zex:sr 0 9
tag @s[scores={long=4},hasitem={item=zex:sr,quantity=8..}] add reload
clear @s[scores={long=4},hasitem={item=zex:sr,quantity=8..}] zex:sr 0 8
tag @s[scores={long=5},hasitem={item=zex:sr,quantity=7..}] add reload
clear @s[scores={long=5},hasitem={item=zex:sr,quantity=7..}] zex:sr 0 7
tag @s[scores={long=6},hasitem={item=zex:sr,quantity=6..}] add reload
clear @s[scores={long=6},hasitem={item=zex:sr,quantity=6..}] zex:sr 0 6
tag @s[scores={long=7},hasitem={item=zex:sr,quantity=5..}] add reload
clear @s[scores={long=7},hasitem={item=zex:sr,quantity=5..}] zex:sr 0 5
tag @s[scores={long=8},hasitem={item=zex:sr,quantity=4..}] add reload
clear @s[scores={long=8},hasitem={item=zex:sr,quantity=4..}] zex:sr 0 4
tag @s[scores={long=9},hasitem={item=zex:sr,quantity=3..}] add reload
clear @s[scores={long=9},hasitem={item=zex:sr,quantity=3..}] zex:sr 0 3
tag @s[scores={long=10},hasitem={item=zex:sr,quantity=2..}] add reload
clear @s[scores={long=10},hasitem={item=zex:sr,quantity=2..}] zex:sr 0 2
tag @s[scores={long=11},hasitem={item=zex:sr,quantity=1..}] add reload
clear @s[scores={long=11},hasitem={item=zex:sr,quantity=1..}] zex:sr 0 1

scoreboard players set @s[scores={long=0},tag=reload] reload 73
scoreboard players set @s[tag=reload] long 12

execute as @s[tag=!reload] run function reload2/longr

execute as @s[tag=reload] run playsound reload.long @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 53
effect @s[tag=reload] slowness 2 2