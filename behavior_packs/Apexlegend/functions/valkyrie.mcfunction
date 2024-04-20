#valkyrie
scoreboard players set @s[scores={valf=141..}] valf 140
tag @s add ed


scoreboard players remove @s[tag=flying,scores={vala=1..}] vala 2
execute as @s[tag=flying,scores={vala=0}] run effect @s[scores={valf=1..}] levitation 1 3
execute as @s[tag=flying,scores={vala=0}] run scoreboard players remove @s[scores={valf=1..}] valf 1

execute as @s[tag=flying,scores={vala=0}] run function valf

tag @s[tag=flying,scores={valf=0}] remove flying
scoreboard players set @s[tag=flying,scores={vala=0}] valc 160
scoreboard players remove @s[tag=!flying,scores={valc=1..}] valc 1

execute as @s[scores={valc=0}] run scoreboard players add @s[tag=!flying,scores={valf=..139}] valf 2

effect @s[tag=flying2,tag=!flying] levitation 0 3
tag @s[tag=flying2,tag=!flying] remove flying2