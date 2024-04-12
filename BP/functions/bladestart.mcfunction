execute @a[tag=!startedblade] ~~~ function startedblade
function cooldown
scoreboard players remove @a[scores={sa=1..}] sa 1
execute @a[tag=fly] ~~~ function fly
execute @a[tag=run] ~~~ function run
gamerule commandblockoutput false
