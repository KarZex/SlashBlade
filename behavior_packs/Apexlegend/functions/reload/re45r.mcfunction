execute as @s[scores={re45=0}] run tag @s[scores={re45a=25..}] add reload
execute as @s[scores={re45=0}] run scoreboard players remove @s[scores={re45a=25..}] re45a 25
execute as @s[scores={re45=1}] run tag @s[scores={re45a=24..}] add reload
execute as @s[scores={re45=1}] run scoreboard players remove @s[scores={re45a=24..}] re45a 24
execute as @s[scores={re45=2}] run tag @s[scores={re45a=23..}] add reload
execute as @s[scores={re45=2}] run scoreboard players remove @s[scores={re45a=23..}] re45a 23
execute as @s[scores={re45=3}] run tag @s[scores={re45a=22..}] add reload
execute as @s[scores={re45=3}] run scoreboard players remove @s[scores={re45a=22..}] re45a 22
execute as @s[scores={re45=4}] run tag @s[scores={re45a=21..}] add reload
execute as @s[scores={re45=4}] run scoreboard players remove @s[scores={re45a=21..}] re45a 21
execute as @s[scores={re45=5}] run tag @s[scores={re45a=20..}] add reload
execute as @s[scores={re45=5}] run scoreboard players remove @s[scores={re45a=20..}] re45a 20
execute as @s[scores={re45=6}] run tag @s[scores={re45a=19..}] add reload
execute as @s[scores={re45=6}] run scoreboard players remove @s[scores={re45a=19..}] re45a 19
execute as @s[scores={re45=7}] run tag @s[scores={re45a=18..}] add reload
execute as @s[scores={re45=7}] run scoreboard players remove @s[scores={re45a=18..}] re45a 18
execute as @s[scores={re45=8}] run tag @s[scores={re45a=17..}] add reload
execute as @s[scores={re45=8}] run scoreboard players remove @s[scores={re45a=17..}] re45a 17
execute as @s[scores={re45=9}] run tag @s[scores={re45a=16..}] add reload
execute as @s[scores={re45=9}] run scoreboard players remove @s[scores={re45a=16..}] re45a 16
execute as @s[scores={re45=10}] run tag @s[scores={re45a=15..}] add reload
execute as @s[scores={re45=10}] run scoreboard players remove @s[scores={re45a=15..}] re45a 15
execute as @s[scores={re45=11}] run tag @s[scores={re45a=14..}] add reload
execute as @s[scores={re45=11}] run scoreboard players remove @s[scores={re45a=14..}] re45a 14
execute as @s[scores={re45=12}] run tag @s[scores={re45a=13..}] add reload
execute as @s[scores={re45=12}] run scoreboard players remove @s[scores={re45a=13..}] re45a 13
execute as @s[scores={re45=13}] run tag @s[scores={re45a=12..}] add reload
execute as @s[scores={re45=13}] run scoreboard players remove @s[scores={re45a=12..}] re45a 12
execute as @s[scores={re45=14}] run tag @s[scores={re45a=11..}] add reload
execute as @s[scores={re45=14}] run scoreboard players remove @s[scores={re45a=11..}] re45a 11
execute as @s[scores={re45=15}] run tag @s[scores={re45a=10..}] add reload
execute as @s[scores={re45=15}] run scoreboard players remove @s[scores={re45a=10..}] re45a 10
execute as @s[scores={re45=16}] run tag @s[scores={re45a=9..}] add reload
execute as @s[scores={re45=16}] run scoreboard players remove @s[scores={re45a=9..}] re45a 9
execute as @s[scores={re45=17}] run tag @s[scores={re45a=8..}] add reload
execute as @s[scores={re45=17}] run scoreboard players remove @s[scores={re45a=8..}] re45a 8
execute as @s[scores={re45=18}] run tag @s[scores={re45a=7..}] add reload
execute as @s[scores={re45=18}] run scoreboard players remove @s[scores={re45a=7..}] re45a 7
execute as @s[scores={re45=19}] run tag @s[scores={re45a=6..}] add reload
execute as @s[scores={re45=19}] run scoreboard players remove @s[scores={re45a=6..}] re45a 6
execute as @s[scores={re45=20}] run tag @s[scores={re45a=5..}] add reload
execute as @s[scores={re45=20}] run scoreboard players remove @s[scores={re45a=5..}] re45a 5
execute as @s[scores={re45=21}] run tag @s[scores={re45a=4..}] add reload
execute as @s[scores={re45=21}] run scoreboard players remove @s[scores={re45a=4..}] re45a 4
execute as @s[scores={re45=22}] run tag @s[scores={re45a=3..}] add reload
execute as @s[scores={re45=22}] run scoreboard players remove @s[scores={re45a=3..}] re45a 3
execute as @s[scores={re45=23}] run tag @s[scores={re45a=2..}] add reload
execute as @s[scores={re45=23}] run scoreboard players remove @s[scores={re45a=2..}] re45a 2
execute as @s[scores={re45=24}] run tag @s[scores={re45a=1..}] add reload
execute as @s[scores={re45=24}] run scoreboard players remove @s[scores={re45a=1..}] re45a 1

scoreboard players set @s[scores={re45=0},tag=reload] reload 39
scoreboard players set @s[tag=reload] re45 25

execute as @s[tag=!reload] run function reload2/re45r

execute as @s[tag=reload] run playsound reload.re45 @s
scoreboard players set @s[scores={reload=0},tag=reload] reload 30