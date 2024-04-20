tag @s[scores={p2020=0},hasitem={item=zex:ha,quantity=21..}] add reload
clear @s[scores={p2020=0},hasitem={item=zex:ha,quantity=21..}] zex:ha 0 21
tag @s[scores={p2020=1},hasitem={item=zex:ha,quantity=20..}] add reload
clear @s[scores={p2020=1},hasitem={item=zex:ha,quantity=20..}] zex:ha 0 20
tag @s[scores={p2020=2},hasitem={item=zex:ha,quantity=19..}] add reload
clear @s[scores={p2020=2},hasitem={item=zex:ha,quantity=19..}] zex:ha 0 19
tag @s[scores={p2020=3},hasitem={item=zex:ha,quantity=18..}] add reload
clear @s[scores={p2020=3},hasitem={item=zex:ha,quantity=18..}] zex:ha 0 18
tag @s[scores={p2020=4},hasitem={item=zex:ha,quantity=17..}] add reload
clear @s[scores={p2020=4},hasitem={item=zex:ha,quantity=17..}] zex:ha 0 17
tag @s[scores={p2020=5},hasitem={item=zex:ha,quantity=16..}] add reload
clear @s[scores={p2020=5},hasitem={item=zex:ha,quantity=16..}] zex:ha 0 16
tag @s[scores={p2020=6},hasitem={item=zex:ha,quantity=15..}] add reload
clear @s[scores={p2020=6},hasitem={item=zex:ha,quantity=15..}] zex:ha 0 15
tag @s[scores={p2020=7},hasitem={item=zex:ha,quantity=14..}] add reload
clear @s[scores={p2020=7},hasitem={item=zex:ha,quantity=14..}] zex:ha 0 14
tag @s[scores={p2020=8},hasitem={item=zex:ha,quantity=13..}] add reload
clear @s[scores={p2020=8},hasitem={item=zex:ha,quantity=13..}] zex:ha 0 13
tag @s[scores={p2020=9},hasitem={item=zex:ha,quantity=12..}] add reload
clear @s[scores={p2020=9},hasitem={item=zex:ha,quantity=12..}] zex:ha 0 12
tag @s[scores={p2020=10},hasitem={item=zex:ha,quantity=11..}] add reload
clear @s[scores={p2020=10},hasitem={item=zex:ha,quantity=11..}] zex:ha 0 11
tag @s[scores={p2020=11},hasitem={item=zex:ha,quantity=10..}] add reload
clear @s[scores={p2020=11},hasitem={item=zex:ha,quantity=10..}] zex:ha 0 10
tag @s[scores={p2020=12},hasitem={item=zex:ha,quantity=9..}] add reload
clear @s[scores={p2020=12},hasitem={item=zex:ha,quantity=9..}] zex:ha 0 9
tag @s[scores={p2020=13},hasitem={item=zex:ha,quantity=8..}] add reload
clear @s[scores={p2020=13},hasitem={item=zex:ha,quantity=8..}] zex:ha 0 8
tag @s[scores={p2020=14},hasitem={item=zex:ha,quantity=7..}] add reload
clear @s[scores={p2020=14},hasitem={item=zex:ha,quantity=7..}] zex:ha 0 7
tag @s[scores={p2020=15},hasitem={item=zex:ha,quantity=6..}] add reload
clear @s[scores={p2020=15},hasitem={item=zex:ha,quantity=6..}] zex:ha 0 6
tag @s[scores={p2020=16},hasitem={item=zex:ha,quantity=5..}] add reload
clear @s[scores={p2020=16},hasitem={item=zex:ha,quantity=5..}] zex:ha 0 5
tag @s[scores={p2020=17},hasitem={item=zex:ha,quantity=4..}] add reload
clear @s[scores={p2020=17},hasitem={item=zex:ha,quantity=4..}] zex:ha 0 4
tag @s[scores={p2020=18},hasitem={item=zex:ha,quantity=3..}] add reload
clear @s[scores={p2020=18},hasitem={item=zex:ha,quantity=3..}] zex:ha 0 3
tag @s[scores={p2020=19},hasitem={item=zex:ha,quantity=2..}] add reload
clear @s[scores={p2020=19},hasitem={item=zex:ha,quantity=2..}] zex:ha 0 2
tag @s[scores={p2020=20},hasitem={item=zex:ha,quantity=1..}] add reload
clear @s[scores={p2020=20},hasitem={item=zex:ha,quantity=1..}] zex:ha 0 1

scoreboard players set @s[tag=reload] p2020 21

execute as @s[tag=!reload] run function reload2/p2020r

execute as @s[tag=reload] run playsound reload.p2020 @s
scoreboard players set @s[tag=reload] reload 25