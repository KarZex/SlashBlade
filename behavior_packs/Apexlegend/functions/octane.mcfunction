#octane

execute as @s[tag=octaneab] positioned ~~1.5~ run particle zex:green_particle
execute as @s[tag=octaneab] positioned ~~1.3~ run particle zex:green_particle
execute as @s[tag=octaneab] positioned ~~1.4~ run particle zex:green_particle

scoreboard objectives add octaner dummy
scoreboard players remove @s[tag=!octanek,scores={octaner=1..}] octaner 1
effect @s[tag=!octanek,scores={octaner=0}] regeneration 5 0 true 
effect @s[tag=octanek] regeneration 0 0 true 
scoreboard players set @s[tag=!octanek,scores={octaner=0}] octaner 100

scoreboard objectives add octanew dummy
tag @s[scores={octanew=1..}] add octanek
scoreboard players remove @s[scores={octanew=1..}] octanew 1
tag @s[scores={octanew=0},tag=octanek] remove octanek
tag @s[scores={octanew=0},tag=octaneab] remove octaneab