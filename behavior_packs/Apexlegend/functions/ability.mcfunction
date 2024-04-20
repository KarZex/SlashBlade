#wraith
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] abil 100
tag @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] add wraithab
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] speed 5 2 true
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] invisibility 5 2 true
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] resistance 5 255 true
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] night_vision 5 2 true
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:wraith}] abi 600
replaceitem entity @s[tag=wraithab,hasitem={location=slot.armor.head,item=zex:wraith}] slot.armor.head 0 air

#bangalore
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bangalore}] abil 20
event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bangalore}] zex:bangaloreab
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bangalore}] abi 600

#gibraltar
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:gibraltar}] abil 20
event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:gibraltar}] zex:gib
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:gibraltar}] abi 600

#fuse
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:fuse}] abil 20
event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:fuse}] zex:fuse
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:fuse}] abi 400

#mirage
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:mirage}] abil 20
execute as @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:mirage}] run summon fire:mirage
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:mirage}] abi 300

#octane
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:octane}] abil 10
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:octane}] octanew 120
tag @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:octane}] add octaneab
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:octane}] speed 6 2 true
damage @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:octane}] 4 suicide
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:octane}] abi 160

#caustic
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:caustic}] abil 20
event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:caustic}] zex:cau
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:caustic}] abi 400

#lifeline
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:lifeline}] abil 20
execute as @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:lifeline}] run summon addon:life
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:lifeline}] abi 900

#revenant
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:revenant}] abil 20
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:revenant}] speed 1 5 true
effect @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:revenant}] jump_boost 1 7 true
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:revenant}] abi 300

#valkyrie
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:valkyrie}] abil 20
event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:valkyrie}] fire:valk
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:valkyrie}] abi 600

#horizon
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:horizon}] abil 20
event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:horizon}] fire:hor
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:horizon}] abi 500

#madmaggie
#scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:madmaggie}] abil 20
#event entity @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:madmaggie}] fire:mad
#scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:madmaggie}] abi 440

#bloodhound
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bloodhound}] abil 20
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bloodhound}] blff 20
execute as @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bloodhound}] run function blfab
tag @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:bloodhound}] remove blf
scoreboard players set @s[tag=!bhult,scores={abi=0},hasitem={location=slot.armor.head,item=zex:bloodhound}] abi 500
scoreboard players set @s[tag=bhult,scores={abi=0},hasitem={location=slot.armor.head,item=zex:bloodhound}] abi 160


#seer
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:seer}] abil 20
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:seer}] seer 30
execute as @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:seer}] run function seerab
scoreboard players set @s[scores={abi=0},hasitem={location=slot.armor.head,item=zex:seer}] abi 600