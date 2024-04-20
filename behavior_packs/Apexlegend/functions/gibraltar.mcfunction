#gibraltar
scoreboard objectives add gibs dummy
tag @s[scores={gibs=1..},tag=scope] add gibsing
tag @s[scores={gibs=0}] remove gibsing
tag @s[tag=!scope] remove gibsing

scoreboard objectives add gibsre dummy
tag @s[scores={gibs=0}] add ngibs
tag @s[scores={gibs=1..}] remove ngibs
scoreboard players set @s[tag=ngibs,scores={gibsre=0}] gibsre 600
tag @s[tag=ngibs,scores={gibsre=600}] add gibred
scoreboard players remove @s[scores={gibsre=1..}] gibsre 1
scoreboard players set @s[scores={gibsre=0},tag=gibred] gibs 2
tag @s[tag=!ngibs] remove gibred

execute as @s[tag=gibsing,scores={gibs=2}] positioned ~~1.4~ run particle zex:gsii_particle ~~~
execute as @s[tag=gibsing,scores={gibs=2}] positioned ~~1.2~ run particle zex:gsii_particle ~~~
execute as @s[tag=gibsing,scores={gibs=2}] positioned ~~1~ run particle zex:gsii_particle ~~~
execute as @s[tag=gibsing,scores={gibs=2}] positioned ~~2~ run particle zex:gsii_particle ~~~
execute as @s[tag=gibsing,scores={gibs=1}] positioned ~~1.4~ run particle zex:gsi_particle ~~~
execute as @s[tag=gibsing,scores={gibs=1}] positioned ~~1.2~ run particle zex:gsi_particle ~~~
execute as @s[tag=gibsing,scores={gibs=1}] positioned ~~1~ run particle zex:gsi_particle ~~~
execute as @s[tag=gibsing,scores={gibs=1}] positioned ~~2~ run particle zex:gsi_particle ~~~

effect @s[tag=gibsing] resistance 5 255 true
effect @s[tag=!gibsing] resistance 0 255 true