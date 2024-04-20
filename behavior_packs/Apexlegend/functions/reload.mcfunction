scoreboard players remove @s[scores={reload=1..}] reload 1
title @s[scores={reload=1..}] actionbar Reloading...
title @s[scores={reload=0}] actionbar §eReloaded



scoreboard players remove @s[scores={rlstar=1..}] rlstar 1
scoreboard players set @s[scores={rlstar=0}] lstar 0
title @s[scores={rlstar=1..}] actionbar §cOverHeated...

execute as @s[scores={reload=0}] run tag @s[scores={rlstar=0}] remove reload