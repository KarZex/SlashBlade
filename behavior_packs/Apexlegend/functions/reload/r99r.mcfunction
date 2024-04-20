tag @s[scores={r99=0},hasitem={item=zex:la,quantity=28..}] add reload
clear @s[scores={r99=0},hasitem={item=zex:la,quantity=28..}] zex:la 0 28
tag @s[scores={r99=1},hasitem={item=zex:la,quantity=27..}] add reload
clear @s[scores={r99=1},hasitem={item=zex:la,quantity=27..}] zex:la 0 27
tag @s[scores={r99=2},hasitem={item=zex:la,quantity=26..}] add reload
clear @s[scores={r99=2},hasitem={item=zex:la,quantity=26..}] zex:la 0 26
tag @s[scores={r99=3},hasitem={item=zex:la,quantity=25..}] add reload
clear @s[scores={r99=3},hasitem={item=zex:la,quantity=25..}] zex:la 0 25
tag @s[scores={r99=4},hasitem={item=zex:la,quantity=24..}] add reload
clear @s[scores={r99=4},hasitem={item=zex:la,quantity=24..}] zex:la 0 24
tag @s[scores={r99=5},hasitem={item=zex:la,quantity=23..}] add reload
clear @s[scores={r99=5},hasitem={item=zex:la,quantity=23..}] zex:la 0 23
tag @s[scores={r99=6},hasitem={item=zex:la,quantity=22..}] add reload
clear @s[scores={r99=6},hasitem={item=zex:la,quantity=22..}] zex:la 0 22
tag @s[scores={r99=7},hasitem={item=zex:la,quantity=21..}] add reload
clear @s[scores={r99=7},hasitem={item=zex:la,quantity=21..}] zex:la 0 21
tag @s[scores={r99=8},hasitem={item=zex:la,quantity=20..}] add reload
clear @s[scores={r99=8},hasitem={item=zex:la,quantity=20..}] zex:la 0 20
tag @s[scores={r99=9},hasitem={item=zex:la,quantity=19..}] add reload
clear @s[scores={r99=9},hasitem={item=zex:la,quantity=19..}] zex:la 0 19
tag @s[scores={r99=10},hasitem={item=zex:la,quantity=18..}] add reload
clear @s[scores={r99=10},hasitem={item=zex:la,quantity=18..}] zex:la 0 18
tag @s[scores={r99=11},hasitem={item=zex:la,quantity=17..}] add reload
clear @s[scores={r99=11},hasitem={item=zex:la,quantity=17..}] zex:la 0 17
tag @s[scores={r99=12},hasitem={item=zex:la,quantity=16..}] add reload
clear @s[scores={r99=12},hasitem={item=zex:la,quantity=16..}] zex:la 0 16
tag @s[scores={r99=13},hasitem={item=zex:la,quantity=15..}] add reload
clear @s[scores={r99=13},hasitem={item=zex:la,quantity=15..}] zex:la 0 15
tag @s[scores={r99=14},hasitem={item=zex:la,quantity=14..}] add reload
clear @s[scores={r99=14},hasitem={item=zex:la,quantity=14..}] zex:la 0 14
tag @s[scores={r99=15},hasitem={item=zex:la,quantity=13..}] add reload
clear @s[scores={r99=15},hasitem={item=zex:la,quantity=13..}] zex:la 0 13
tag @s[scores={r99=16},hasitem={item=zex:la,quantity=12..}] add reload
clear @s[scores={r99=16},hasitem={item=zex:la,quantity=12..}] zex:la 0 12
tag @s[scores={r99=17},hasitem={item=zex:la,quantity=11..}] add reload
clear @s[scores={r99=17},hasitem={item=zex:la,quantity=11..}] zex:la 0 11
tag @s[scores={r99=18},hasitem={item=zex:la,quantity=10..}] add reload
clear @s[scores={r99=18},hasitem={item=zex:la,quantity=10..}] zex:la 0 10
tag @s[scores={r99=19},hasitem={item=zex:la,quantity=9..}] add reload
clear @s[scores={r99=19},hasitem={item=zex:la,quantity=9..}] zex:la 0 9
tag @s[scores={r99=20},hasitem={item=zex:la,quantity=8..}] add reload
clear @s[scores={r99=20},hasitem={item=zex:la,quantity=8..}] zex:la 0 8
tag @s[scores={r99=21},hasitem={item=zex:la,quantity=7..}] add reload
clear @s[scores={r99=21},hasitem={item=zex:la,quantity=7..}] zex:la 0 7
tag @s[scores={r99=22},hasitem={item=zex:la,quantity=6..}] add reload
clear @s[scores={r99=22},hasitem={item=zex:la,quantity=6..}] zex:la 0 6
tag @s[scores={r99=23},hasitem={item=zex:la,quantity=5..}] add reload
clear @s[scores={r99=23},hasitem={item=zex:la,quantity=5..}] zex:la 0 5
tag @s[scores={r99=24},hasitem={item=zex:la,quantity=4..}] add reload
clear @s[scores={r99=24},hasitem={item=zex:la,quantity=4..}] zex:la 0 4
tag @s[scores={r99=25},hasitem={item=zex:la,quantity=3..}] add reload
clear @s[scores={r99=25},hasitem={item=zex:la,quantity=3..}] zex:la 0 3
tag @s[scores={r99=26},hasitem={item=zex:la,quantity=2..}] add reload
clear @s[scores={r99=26},hasitem={item=zex:la,quantity=2..}] zex:la 0 2
tag @s[scores={r99=27},hasitem={item=zex:la,quantity=1..}] add reload
clear @s[scores={r99=27},hasitem={item=zex:la,quantity=1..}] zex:la 0 1

scoreboard players set @s[scores={r99=0},tag=reload] reload 49
scoreboard players set @s[tag=reload] r99 28

execute as @s[tag=!reload] run function reload2/r99r

execute as @s[tag=reload] run playsound reload.r99 @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 36
effect @s[tag=reload] slowness 2 2