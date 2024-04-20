tag @s[scores={eva=0},hasitem={item=zex:sa,quantity=8..}] add reload
clear @s[scores={eva=0},hasitem={item=zex:sa,quantity=8..}] zex:sa 0 8
tag @s[scores={eva=1},hasitem={item=zex:sa,quantity=7..}] add reload
clear @s[scores={eva=1},hasitem={item=zex:sa,quantity=7..}] zex:sa 0 7
tag @s[scores={eva=2},hasitem={item=zex:sa,quantity=6..}] add reload
clear @s[scores={eva=2},hasitem={item=zex:sa,quantity=6..}] zex:sa 0 6
tag @s[scores={eva=3},hasitem={item=zex:sa,quantity=5..}] add reload
clear @s[scores={eva=3},hasitem={item=zex:sa,quantity=5..}] zex:sa 0 5
tag @s[scores={eva=4},hasitem={item=zex:sa,quantity=4..}] add reload
clear @s[scores={eva=4},hasitem={item=zex:sa,quantity=4..}] zex:sa 0 4
tag @s[scores={eva=5},hasitem={item=zex:sa,quantity=3..}] add reload
clear @s[scores={eva=5},hasitem={item=zex:sa,quantity=3..}] zex:sa 0 3
tag @s[scores={eva=6},hasitem={item=zex:sa,quantity=2..}] add reload
clear @s[scores={eva=6},hasitem={item=zex:sa,quantity=2..}] zex:sa 0 2
tag @s[scores={eva=7},hasitem={item=zex:sa,quantity=1..}] add reload
clear @s[scores={eva=7},hasitem={item=zex:sa,quantity=1..}] zex:sa 0 1

scoreboard players set @s[scores={eva=0},tag=reload] reload 60
scoreboard players set @s[tag=reload] eva 8

execute as @s[tag=!reload] run function reload2/evar

execute as @s[tag=reload] run playsound reload.eva @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 55