tag @s[scores={car=0},hasitem={item=zex:ha,quantity=27..}] add reload
clear @s[scores={car=0},hasitem={item=zex:ha,quantity=27..}] zex:ha 0 27
tag @s[scores={car=1},hasitem={item=zex:ha,quantity=26..}] add reload
clear @s[scores={car=1},hasitem={item=zex:ha,quantity=26..}] zex:ha 0 26
tag @s[scores={car=2},hasitem={item=zex:ha,quantity=25..}] add reload
clear @s[scores={car=2},hasitem={item=zex:ha,quantity=25..}] zex:ha 0 25
tag @s[scores={car=3},hasitem={item=zex:ha,quantity=24..}] add reload
clear @s[scores={car=3},hasitem={item=zex:ha,quantity=24..}] zex:ha 0 24
tag @s[scores={car=4},hasitem={item=zex:ha,quantity=23..}] add reload
clear @s[scores={car=4},hasitem={item=zex:ha,quantity=23..}] zex:ha 0 23
tag @s[scores={car=5},hasitem={item=zex:ha,quantity=22..}] add reload
clear @s[scores={car=5},hasitem={item=zex:ha,quantity=22..}] zex:ha 0 22
tag @s[scores={car=6},hasitem={item=zex:ha,quantity=21..}] add reload
clear @s[scores={car=6},hasitem={item=zex:ha,quantity=21..}] zex:ha 0 21
tag @s[scores={car=7},hasitem={item=zex:ha,quantity=20..}] add reload
clear @s[scores={car=7},hasitem={item=zex:ha,quantity=20..}] zex:ha 0 20
tag @s[scores={car=8},hasitem={item=zex:ha,quantity=19..}] add reload
clear @s[scores={car=8},hasitem={item=zex:ha,quantity=19..}] zex:ha 0 19
tag @s[scores={car=9},hasitem={item=zex:ha,quantity=18..}] add reload
clear @s[scores={car=9},hasitem={item=zex:ha,quantity=18..}] zex:ha 0 18
tag @s[scores={car=10},hasitem={item=zex:ha,quantity=17..}] add reload
clear @s[scores={car=10},hasitem={item=zex:ha,quantity=17..}] zex:ha 0 17
tag @s[scores={car=11},hasitem={item=zex:ha,quantity=16..}] add reload
clear @s[scores={car=11},hasitem={item=zex:ha,quantity=16..}] zex:ha 0 16
tag @s[scores={car=12},hasitem={item=zex:ha,quantity=15..}] add reload
clear @s[scores={car=12},hasitem={item=zex:ha,quantity=15..}] zex:ha 0 15
tag @s[scores={car=13},hasitem={item=zex:ha,quantity=14..}] add reload
clear @s[scores={car=13},hasitem={item=zex:ha,quantity=14..}] zex:ha 0 14
tag @s[scores={car=14},hasitem={item=zex:ha,quantity=13..}] add reload
clear @s[scores={car=14},hasitem={item=zex:ha,quantity=13..}] zex:ha 0 13
tag @s[scores={car=15},hasitem={item=zex:ha,quantity=12..}] add reload
clear @s[scores={car=15},hasitem={item=zex:ha,quantity=12..}] zex:ha 0 12
tag @s[scores={car=16},hasitem={item=zex:ha,quantity=11..}] add reload
clear @s[scores={car=16},hasitem={item=zex:ha,quantity=11..}] zex:ha 0 11
tag @s[scores={car=17},hasitem={item=zex:ha,quantity=10..}] add reload
clear @s[scores={car=17},hasitem={item=zex:ha,quantity=10..}] zex:ha 0 10
tag @s[scores={car=18},hasitem={item=zex:ha,quantity=9..}] add reload
clear @s[scores={car=18},hasitem={item=zex:ha,quantity=9..}] zex:ha 0 9
tag @s[scores={car=19},hasitem={item=zex:ha,quantity=8..}] add reload
clear @s[scores={car=19},hasitem={item=zex:ha,quantity=8..}] zex:ha 0 8
tag @s[scores={car=20},hasitem={item=zex:ha,quantity=7..}] add reload
clear @s[scores={car=20},hasitem={item=zex:ha,quantity=7..}] zex:ha 0 7
tag @s[scores={car=21},hasitem={item=zex:ha,quantity=6..}] add reload
clear @s[scores={car=21},hasitem={item=zex:ha,quantity=6..}] zex:ha 0 6
tag @s[scores={car=22},hasitem={item=zex:ha,quantity=5..}] add reload
clear @s[scores={car=22},hasitem={item=zex:ha,quantity=5..}] zex:ha 0 5
tag @s[scores={car=23},hasitem={item=zex:ha,quantity=4..}] add reload
clear @s[scores={car=23},hasitem={item=zex:ha,quantity=4..}] zex:ha 0 4
tag @s[scores={car=24},hasitem={item=zex:ha,quantity=3..}] add reload
clear @s[scores={car=24},hasitem={item=zex:ha,quantity=3..}] zex:ha 0 3
tag @s[scores={car=25},hasitem={item=zex:ha,quantity=2..}] add reload
clear @s[scores={car=25},hasitem={item=zex:ha,quantity=2..}] zex:ha 0 2
tag @s[scores={car=26},hasitem={item=zex:ha,quantity=1..}] add reload
clear @s[scores={car=26},hasitem={item=zex:ha,quantity=1..}] zex:ha 0 1

scoreboard players set @s[scores={car=0},tag=reload] reload 43
scoreboard players set @s[tag=reload] car 27

execute as @s[tag=!reload] run function reload2/carr


execute as @s[tag=reload] run playsound reload.car @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 34
effect @s[tag=reload] slowness 2 2