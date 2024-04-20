scoreboard players remove @s[scores={rlstar=1..}] rlstar 1
scoreboard players set @s[scores={rlstar=0}] lstar 0
#give @s[tag=reload,scores={rlstar=0}] gun:lstar 1 1
tag @s[scores={rlstar=0}] remove reload
title @s[scores={rlstar=1..}] actionbar §cOverHeated...