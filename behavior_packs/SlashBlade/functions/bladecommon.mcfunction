execute @e[family=monster,r=5,c=1] ~~~ tag @p add sed
scoreboard players remove @s[tag=!sed,scores={blade=1..}] blade 3
scoreboard players add @s[tag=sed,scores={blade=..70}] blade 2
give @s[tag=sed] zex:tinyproudsoul
tag @s remove sed
playsound swingblade.c @s
playanimation @s[scores={wood=0}] animation.sword.first.using
playanimation @s[scores={wood=1}] animation.sword.first.using2
playanimation @s[scores={wood=2}] animation.sword.first.using
playanimation @s[scores={wood=3}] animation.sword.first.using
playanimation @s[scores={wood=4}] animation.sword.first.using2
scoreboard players add @s[scores={wood=..5}] wood 1
scoreboard players set @s[scores={wood=5..}] wood 0
function level