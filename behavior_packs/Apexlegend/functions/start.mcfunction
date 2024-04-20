execute as @s[tag=reload] run function reload

execute as @s[tag=damaged] run function damaged

execute as @s[tag=bhult] run function bhult

execute as @s[tag=seer2] run function seer2

execute as @s[tag=!akb48] run function bstart

function cooldown

function team

function armor

execute as @s[tag=!startedv4] run function gunstart

execute as @s[tag=damage] run function gunstart

execute as @s[hasitem={location=slot.armor.head,item=zex:gibraltar},tag=!revr] run function gibraltar

execute as @s[hasitem={location=slot.armor.head,item=zex:revenant},tag=!revr] run function revenant

execute as @s[hasitem={location=slot.armor.head,item=zex:octane},tag=!revr] run function octane

execute as @s[hasitem={location=slot.armor.head,item=zex:wraith},tag=!revr] run function wraith

execute as @s[hasitem={location=slot.armor.head,item=zex:bangalore},tag=!revr] run function bangalore

execute as @s[hasitem={location=slot.armor.head,item=zex:valkyrie},tag=!revr] run function valkyrie

execute as @s[hasitem={location=slot.armor.head,item=zex:caustic},tag=!revr] run effect @s fatal_poison 0 1

execute as @s[hasitem={location=slot.armor.head,item=zex:seer},tag=!revr] run function seer

scoreboard objectives add mirage dummy

scoreboard players remove @s[scores={seer=1..}] seer 1
scoreboard players remove @s[scores={blff=1..}] blff 1

scoreboard players set @s[scores={reload=..-1}] reload 0

scoreboard players remove @s[scores={caup=1..}] caup 1
scoreboard players remove @s[scores={lifer=1..}] lifer 1
scoreboard players remove @s[scores={revr=1..}] revr 1
tag @s[scores={revr=0},tag=revr] remove revr


#ability
scoreboard players remove @s[scores={abi=1..}] abi 1
scoreboard players remove @s[scores={abil=1..}] abil 1

tag @s[scores={abil=1..}] add abil
tag @s[scores={abil=0}] remove abil

#wraith
execute as @s[tag=wraithab] positioned ~~1.4~ run particle minecraft:dragon_breath_trail
replaceitem entity @s[scores={abil=0},tag=wraithab] slot.armor.head 0 zex:wraith
tag @s[scores={abil=0},tag=wraithab,hasitem={location=slot.armor.head,item=zex:wraith}] remove wraithab

gamerule commandblockoutput false


#arcf
scoreboard objectives add arcf dummy
scoreboard players remove @s[tag=arc,scores={arcf=1..}] arcf 1
execute as @s[tag=arc,scores={arcf=0}] run summon fire:arcfire
clear @s[tag=arc] wither_rose
tag @s[scores={arcf=0}] remove arc

scoreboard objectives add glow dummy
execute as @s[tag=glow] run function glow

execute as @s[hasitem={location=slot.armor.head,item=zex:bloodhound}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:fuse}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:gibraltar}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:octane}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:wraith}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:bangalore}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:valkyrie}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:caustic}] run effect @s invisibility 1 
execute as @s[hasitem={location=slot.armor.head,item=zex:horizon}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:lifeline}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:seer}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:revenant}] run effect @s invisibility 1
execute as @s[hasitem={location=slot.armor.head,item=zex:mirage}] run effect @s invisibility 1