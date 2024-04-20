tp @a[tag=!absent] 51 -60 -31
kill @e[type=!player,type=!addon:b0]
clear @a
spawnpoint @a 13 -60 -29
gamemode a @a[tag=!absent]
execute as @a[tag=!absent] run function estart

tag @a remove starteda

scoreboard objectives add team dummy
scoreboard players set @a team 0
scoreboard objectives remove "§l生存人数" 
scoreboard objectives add "§l生存人数" dummy
scoreboard objectives setdisplay sidebar "§l生存人数"
scoreboard players set "§4red" "§l生存人数" 0
scoreboard players set "§1blue" "§l生存人数" 0

fill -1 -59 44 -1 -56 48 barrier
fill 105 -59 44 105 -56 48 barrier

fill 2 -59 210 2 -56 214 barrier
fill 131 -59 210 131 -56 214 barrier

fill 2 -59 392 2 -56 396 barrier
fill 131 -59 338 131 -56 342 barrier

fill 2 -59 510 2 -56 514 barrier
fill 131 -59 510 131 -56 514 barrier

structure load loot1 52 -57 75
structure load loot2 52 -59 -5

structure load loot1 89 -57 264
structure load loot2 44 -59 170

structure load loot1 66 -50 405
structure load loot2 68 -53 316

structure load loot1 52 -57 75
structure load loot2 52 -59 -5



function team/randomteam2

tag @a remove counted