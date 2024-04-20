tag @s[scores={g7=0},hasitem={item=zex:la,quantity=20..}] add reload
clear @s[scores={g7=0},hasitem={item=zex:la,quantity=20..}] zex:la 0 20
tag @s[scores={g7=1},hasitem={item=zex:la,quantity=19..}] add reload
clear @s[scores={g7=1},hasitem={item=zex:la,quantity=19..}] zex:la 0 19
tag @s[scores={g7=2},hasitem={item=zex:la,quantity=18..}] add reload
clear @s[scores={g7=2},hasitem={item=zex:la,quantity=18..}] zex:la 0 18
tag @s[scores={g7=3},hasitem={item=zex:la,quantity=17..}] add reload
clear @s[scores={g7=3},hasitem={item=zex:la,quantity=17..}] zex:la 0 17
tag @s[scores={g7=4},hasitem={item=zex:la,quantity=16..}] add reload
clear @s[scores={g7=4},hasitem={item=zex:la,quantity=16..}] zex:la 0 16
tag @s[scores={g7=5},hasitem={item=zex:la,quantity=15..}] add reload
clear @s[scores={g7=5},hasitem={item=zex:la,quantity=15..}] zex:la 0 15
tag @s[scores={g7=6},hasitem={item=zex:la,quantity=14..}] add reload
clear @s[scores={g7=6},hasitem={item=zex:la,quantity=14..}] zex:la 0 14
tag @s[scores={g7=7},hasitem={item=zex:la,quantity=13..}] add reload
clear @s[scores={g7=7},hasitem={item=zex:la,quantity=13..}] zex:la 0 13
tag @s[scores={g7=8},hasitem={item=zex:la,quantity=12..}] add reload
clear @s[scores={g7=8},hasitem={item=zex:la,quantity=12..}] zex:la 0 12
tag @s[scores={g7=9},hasitem={item=zex:la,quantity=11..}] add reload
clear @s[scores={g7=9},hasitem={item=zex:la,quantity=11..}] zex:la 0 11
tag @s[scores={g7=10},hasitem={item=zex:la,quantity=10..}] add reload
clear @s[scores={g7=10},hasitem={item=zex:la,quantity=10..}] zex:la 0 10
tag @s[scores={g7=11},hasitem={item=zex:la,quantity=9..}] add reload
clear @s[scores={g7=11},hasitem={item=zex:la,quantity=9..}] zex:la 0 9
tag @s[scores={g7=12},hasitem={item=zex:la,quantity=8..}] add reload
clear @s[scores={g7=12},hasitem={item=zex:la,quantity=8..}] zex:la 0 8
tag @s[scores={g7=13},hasitem={item=zex:la,quantity=7..}] add reload
clear @s[scores={g7=13},hasitem={item=zex:la,quantity=7..}] zex:la 0 7
tag @s[scores={g7=14},hasitem={item=zex:la,quantity=6..}] add reload
clear @s[scores={g7=14},hasitem={item=zex:la,quantity=6..}] zex:la 0 6
tag @s[scores={g7=15},hasitem={item=zex:la,quantity=5..}] add reload
clear @s[scores={g7=15},hasitem={item=zex:la,quantity=5..}] zex:la 0 5
tag @s[scores={g7=16},hasitem={item=zex:la,quantity=4..}] add reload
clear @s[scores={g7=16},hasitem={item=zex:la,quantity=4..}] zex:la 0 4
tag @s[scores={g7=17},hasitem={item=zex:la,quantity=3..}] add reload
clear @s[scores={g7=17},hasitem={item=zex:la,quantity=3..}] zex:la 0 3
tag @s[scores={g7=18},hasitem={item=zex:la,quantity=2..}] add reload
clear @s[scores={g7=18},hasitem={item=zex:la,quantity=2..}] zex:la 0 2
tag @s[scores={g7=19},hasitem={item=zex:la,quantity=1..}] add reload
clear @s[scores={g7=19},hasitem={item=zex:la,quantity=1..}] zex:la 0 1

scoreboard players set @s[scores={g7=0},tag=reload] reload 60
scoreboard players set @s[tag=reload] g7 20

execute as @s[tag=!reload] run function reload2/g7r

execute as @s[tag=reload] run playsound reload.g7 @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 48
effect @s[tag=reload] slowness 2 2