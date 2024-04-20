tag @s[scores={volt=0},hasitem={item=zex:ea,quantity=26..}] add reload
clear @s[scores={volt=0},hasitem={item=zex:ea,quantity=26..}] zex:ea 0 26
tag @s[scores={volt=1},hasitem={item=zex:ea,quantity=25..}] add reload
clear @s[scores={volt=1},hasitem={item=zex:ea,quantity=25..}] zex:ea 0 25
tag @s[scores={volt=2},hasitem={item=zex:ea,quantity=24..}] add reload
clear @s[scores={volt=2},hasitem={item=zex:ea,quantity=24..}] zex:ea 0 24
tag @s[scores={volt=3},hasitem={item=zex:ea,quantity=23..}] add reload
clear @s[scores={volt=3},hasitem={item=zex:ea,quantity=23..}] zex:ea 0 23
tag @s[scores={volt=4},hasitem={item=zex:ea,quantity=22..}] add reload
clear @s[scores={volt=4},hasitem={item=zex:ea,quantity=22..}] zex:ea 0 22
tag @s[scores={volt=5},hasitem={item=zex:ea,quantity=21..}] add reload
clear @s[scores={volt=5},hasitem={item=zex:ea,quantity=21..}] zex:ea 0 21
tag @s[scores={volt=6},hasitem={item=zex:ea,quantity=20..}] add reload
clear @s[scores={volt=6},hasitem={item=zex:ea,quantity=20..}] zex:ea 0 20
tag @s[scores={volt=7},hasitem={item=zex:ea,quantity=19..}] add reload
clear @s[scores={volt=7},hasitem={item=zex:ea,quantity=19..}] zex:ea 0 19
tag @s[scores={volt=8},hasitem={item=zex:ea,quantity=18..}] add reload
clear @s[scores={volt=8},hasitem={item=zex:ea,quantity=18..}] zex:ea 0 18
tag @s[scores={volt=9},hasitem={item=zex:ea,quantity=17..}] add reload
clear @s[scores={volt=9},hasitem={item=zex:ea,quantity=17..}] zex:ea 0 17
tag @s[scores={volt=10},hasitem={item=zex:ea,quantity=16..}] add reload
clear @s[scores={volt=10},hasitem={item=zex:ea,quantity=16..}] zex:ea 0 16
tag @s[scores={volt=11},hasitem={item=zex:ea,quantity=15..}] add reload
clear @s[scores={volt=11},hasitem={item=zex:ea,quantity=15..}] zex:ea 0 15
tag @s[scores={volt=12},hasitem={item=zex:ea,quantity=14..}] add reload
clear @s[scores={volt=12},hasitem={item=zex:ea,quantity=14..}] zex:ea 0 14
tag @s[scores={volt=13},hasitem={item=zex:ea,quantity=13..}] add reload
clear @s[scores={volt=13},hasitem={item=zex:ea,quantity=13..}] zex:ea 0 13
tag @s[scores={volt=14},hasitem={item=zex:ea,quantity=12..}] add reload
clear @s[scores={volt=14},hasitem={item=zex:ea,quantity=12..}] zex:ea 0 12
tag @s[scores={volt=15},hasitem={item=zex:ea,quantity=11..}] add reload
clear @s[scores={volt=15},hasitem={item=zex:ea,quantity=11..}] zex:ea 0 11
tag @s[scores={volt=16},hasitem={item=zex:ea,quantity=10..}] add reload
clear @s[scores={volt=16},hasitem={item=zex:ea,quantity=10..}] zex:ea 0 10
tag @s[scores={volt=17},hasitem={item=zex:ea,quantity=9..}] add reload
clear @s[scores={volt=17},hasitem={item=zex:ea,quantity=9..}] zex:ea 0 9
tag @s[scores={volt=18},hasitem={item=zex:ea,quantity=8..}] add reload
clear @s[scores={volt=18},hasitem={item=zex:ea,quantity=8..}] zex:ea 0 8
tag @s[scores={volt=19},hasitem={item=zex:ea,quantity=7..}] add reload
clear @s[scores={volt=19},hasitem={item=zex:ea,quantity=7..}] zex:ea 0 7
tag @s[scores={volt=20},hasitem={item=zex:ea,quantity=6..}] add reload
clear @s[scores={volt=20},hasitem={item=zex:ea,quantity=6..}] zex:ea 0 6
tag @s[scores={volt=21},hasitem={item=zex:ea,quantity=5..}] add reload
clear @s[scores={volt=21},hasitem={item=zex:ea,quantity=5..}] zex:ea 0 5
tag @s[scores={volt=22},hasitem={item=zex:ea,quantity=4..}] add reload
clear @s[scores={volt=22},hasitem={item=zex:ea,quantity=4..}] zex:ea 0 4
tag @s[scores={volt=23},hasitem={item=zex:ea,quantity=3..}] add reload
clear @s[scores={volt=23},hasitem={item=zex:ea,quantity=3..}] zex:ea 0 3
tag @s[scores={volt=24},hasitem={item=zex:ea,quantity=2..}] add reload
clear @s[scores={volt=24},hasitem={item=zex:ea,quantity=2..}] zex:ea 0 2
tag @s[scores={volt=25},hasitem={item=zex:ea,quantity=1..}] add reload
clear @s[scores={volt=25},hasitem={item=zex:ea,quantity=1..}] zex:ea 0 1

scoreboard players set @s[scores={volt=0},tag=reload] reload 50
scoreboard players set @s[tag=reload] volt 26

execute as @s[tag=!reload] run function reload2/voltr

execute as @s[tag=reload] run playsound reload.volt @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 40
effect @s[tag=reload] slowness 2 2