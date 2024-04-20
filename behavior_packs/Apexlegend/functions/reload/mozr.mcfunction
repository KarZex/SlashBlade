#scoreboard objectives add rmoz dummy
tag @s[scores={moz=0},hasitem={item=zex:sa,quantity=6..}] add reload
clear @s[scores={moz=0},hasitem={item=zex:sa,quantity=6..}] zex:sa 0 6
tag @s[scores={moz=1},hasitem={item=zex:sa,quantity=5..}] add reload
clear @s[scores={moz=1},hasitem={item=zex:sa,quantity=5..}] zex:sa 0 5
tag @s[scores={moz=2},hasitem={item=zex:sa,quantity=4..}] add reload
clear @s[scores={moz=2},hasitem={item=zex:sa,quantity=4..}] zex:sa 0 4
tag @s[scores={moz=3},hasitem={item=zex:sa,quantity=3..}] add reload
clear @s[scores={moz=3},hasitem={item=zex:sa,quantity=3..}] zex:sa 0 3
tag @s[scores={moz=4},hasitem={item=zex:sa,quantity=2..}] add reload
clear @s[scores={moz=4},hasitem={item=zex:sa,quantity=2..}] zex:sa 0 2
tag @s[scores={moz=5},hasitem={item=zex:sa,quantity=1..}] add reload
clear @s[scores={moz=5},hasitem={item=zex:sa,quantity=1..}] zex:sa 0 1

scoreboard players set @s[scores={moz=0},tag=reload] reload 52
scoreboard players set @s[tag=reload] moz 6

execute as @s[tag=!reload] run function reload2/mozr

execute as @s[tag=reload] run playsound reload.moz @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 42
effect @s[tag=reload] slowness 2 2