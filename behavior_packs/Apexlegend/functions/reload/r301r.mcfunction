tag @s[scores={r301=0},hasitem={item=zex:la,quantity=28..}] add reload
clear @s[scores={r301=0},hasitem={item=zex:la,quantity=28..}] zex:la 0 28
tag @s[scores={r301=1},hasitem={item=zex:la,quantity=27..}] add reload
clear @s[scores={r301=1},hasitem={item=zex:la,quantity=27..}] zex:la 0 27
tag @s[scores={r301=2},hasitem={item=zex:la,quantity=26..}] add reload
clear @s[scores={r301=2},hasitem={item=zex:la,quantity=26..}] zex:la 0 26
tag @s[scores={r301=3},hasitem={item=zex:la,quantity=25..}] add reload
clear @s[scores={r301=3},hasitem={item=zex:la,quantity=25..}] zex:la 0 25
tag @s[scores={r301=4},hasitem={item=zex:la,quantity=24..}] add reload
clear @s[scores={r301=4},hasitem={item=zex:la,quantity=24..}] zex:la 0 24
tag @s[scores={r301=5},hasitem={item=zex:la,quantity=23..}] add reload
clear @s[scores={r301=5},hasitem={item=zex:la,quantity=23..}] zex:la 0 23
tag @s[scores={r301=6},hasitem={item=zex:la,quantity=22..}] add reload
clear @s[scores={r301=6},hasitem={item=zex:la,quantity=22..}] zex:la 0 22
tag @s[scores={r301=7},hasitem={item=zex:la,quantity=21..}] add reload
clear @s[scores={r301=7},hasitem={item=zex:la,quantity=21..}] zex:la 0 21
tag @s[scores={r301=8},hasitem={item=zex:la,quantity=20..}] add reload
clear @s[scores={r301=8},hasitem={item=zex:la,quantity=20..}] zex:la 0 20
tag @s[scores={r301=9},hasitem={item=zex:la,quantity=19..}] add reload
clear @s[scores={r301=9},hasitem={item=zex:la,quantity=19..}] zex:la 0 19
tag @s[scores={r301=10},hasitem={item=zex:la,quantity=18..}] add reload
clear @s[scores={r301=10},hasitem={item=zex:la,quantity=18..}] zex:la 0 18
tag @s[scores={r301=11},hasitem={item=zex:la,quantity=17..}] add reload
clear @s[scores={r301=11},hasitem={item=zex:la,quantity=17..}] zex:la 0 17
tag @s[scores={r301=12},hasitem={item=zex:la,quantity=16..}] add reload
clear @s[scores={r301=12},hasitem={item=zex:la,quantity=16..}] zex:la 0 16
tag @s[scores={r301=13},hasitem={item=zex:la,quantity=15..}] add reload
clear @s[scores={r301=13},hasitem={item=zex:la,quantity=15..}] zex:la 0 15
tag @s[scores={r301=14},hasitem={item=zex:la,quantity=14..}] add reload
clear @s[scores={r301=14},hasitem={item=zex:la,quantity=14..}] zex:la 0 14
tag @s[scores={r301=15},hasitem={item=zex:la,quantity=13..}] add reload
clear @s[scores={r301=15},hasitem={item=zex:la,quantity=13..}] zex:la 0 13
tag @s[scores={r301=16},hasitem={item=zex:la,quantity=12..}] add reload
clear @s[scores={r301=16},hasitem={item=zex:la,quantity=12..}] zex:la 0 12
tag @s[scores={r301=17},hasitem={item=zex:la,quantity=11..}] add reload
clear @s[scores={r301=17},hasitem={item=zex:la,quantity=11..}] zex:la 0 11
tag @s[scores={r301=18},hasitem={item=zex:la,quantity=10..}] add reload
clear @s[scores={r301=18},hasitem={item=zex:la,quantity=10..}] zex:la 0 10
tag @s[scores={r301=19},hasitem={item=zex:la,quantity=9..}] add reload
clear @s[scores={r301=19},hasitem={item=zex:la,quantity=9..}] zex:la 0 9
tag @s[scores={r301=20},hasitem={item=zex:la,quantity=8..}] add reload
clear @s[scores={r301=20},hasitem={item=zex:la,quantity=8..}] zex:la 0 8
tag @s[scores={r301=21},hasitem={item=zex:la,quantity=7..}] add reload
clear @s[scores={r301=21},hasitem={item=zex:la,quantity=7..}] zex:la 0 7
tag @s[scores={r301=22},hasitem={item=zex:la,quantity=6..}] add reload
clear @s[scores={r301=22},hasitem={item=zex:la,quantity=6..}] zex:la 0 6
tag @s[scores={r301=23},hasitem={item=zex:la,quantity=5..}] add reload
clear @s[scores={r301=23},hasitem={item=zex:la,quantity=5..}] zex:la 0 5
tag @s[scores={r301=24},hasitem={item=zex:la,quantity=4..}] add reload
clear @s[scores={r301=24},hasitem={item=zex:la,quantity=4..}] zex:la 0 4
tag @s[scores={r301=25},hasitem={item=zex:la,quantity=3..}] add reload
clear @s[scores={r301=25},hasitem={item=zex:la,quantity=3..}] zex:la 0 3
tag @s[scores={r301=26},hasitem={item=zex:la,quantity=2..}] add reload
clear @s[scores={r301=26},hasitem={item=zex:la,quantity=2..}] zex:la 0 2
tag @s[scores={r301=27},hasitem={item=zex:la,quantity=1..}] add reload
clear @s[scores={r301=27},hasitem={item=zex:la,quantity=1..}] zex:la 0 1

scoreboard players set @s[scores={r301=0},tag=reload] reload 64
scoreboard players set @s[tag=reload] r301 28

execute as @s[tag=!reload] run function reload2/r301r

execute as @s[tag=reload] run playsound reload.r301 @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 48