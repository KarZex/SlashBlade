#scoreboard objectives add rpk dummy
tag @s[scores={pk=0},hasitem={item=zex:sa,quantity=5..}] add reload
clear @s[scores={pk=0},hasitem={item=zex:sa,quantity=5..}] zex:sa 0 5
tag @s[scores={pk=1},hasitem={item=zex:sa,quantity=4..}] add reload
clear @s[scores={pk=1},hasitem={item=zex:sa,quantity=4..}] zex:sa 0 4
tag @s[scores={pk=2},hasitem={item=zex:sa,quantity=3..}] add reload
clear @s[scores={pk=2},hasitem={item=zex:sa,quantity=3..}] zex:sa 0 3
tag @s[scores={pk=3},hasitem={item=zex:sa,quantity=2..}] add reload
clear @s[scores={pk=3},hasitem={item=zex:sa,quantity=2..}] zex:sa 0 2
tag @s[scores={pk=4},hasitem={item=zex:sa,quantity=1..}] add reload
clear @s[scores={pk=4},hasitem={item=zex:sa,quantity=1..}] zex:sa 0 1

scoreboard players set @s[scores={pk=0},tag=reload] reload 70
scoreboard players set @s[tag=reload] pk 5

execute as @s[tag=!reload] run function reload2/pkr

execute as @s[tag=reload] run playsound reload.pk @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 50
effect @s[tag=reload] slowness 2 2