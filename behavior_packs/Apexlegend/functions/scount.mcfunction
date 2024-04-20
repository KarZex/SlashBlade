execute as @a[scores={team=1},c=1,tag=!counted] run scoreboard players add "§4red" "§l生存人数" 1
execute as @a[scores={team=2},c=1,tag=!counted] run scoreboard players add "§1blue" "§l生存人数" 1
tag @a[scores={team=1},c=1,tag=!counted] add counted
tag @a[scores={team=2},c=1,tag=!counted] add counted