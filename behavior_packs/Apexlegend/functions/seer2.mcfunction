scoreboard players remove @s[scores={seer2=1..}] seer2 1

replaceitem entity @s[scores={seer2=0},tag=sell1] slot.weapon.mainhand 0 zex:sell 1
replaceitem entity @s[scores={seer2=0},tag=sell2] slot.weapon.mainhand 0 zex:sell 2
replaceitem entity @s[scores={seer2=0},tag=sell3] slot.weapon.mainhand 0 zex:sell 3
replaceitem entity @s[scores={seer2=0},tag=sell4] slot.weapon.mainhand 0 zex:sell 4

replaceitem entity @s[scores={seer2=0},tag=bt1] slot.weapon.mainhand 0 zex:bt 1
replaceitem entity @s[scores={seer2=0},tag=bt2] slot.weapon.mainhand 0 zex:bt 2

replaceitem entity @s[scores={seer2=0},tag=fx1] slot.weapon.mainhand 0 zex:fx 1

tag @s[scores={seer2=0}] remove sell1
tag @s[scores={seer2=0}] remove sell2
tag @s[scores={seer2=0}] remove sell3
tag @s[scores={seer2=0}] remove sell4

tag @s[scores={seer2=0}] remove bt1
tag @s[scores={seer2=0}] remove bt2

tag @s[scores={seer2=0}] remove fx1

tag @s[scores={seer2=0}] remove seer2