scoreboard players remove @s[scores={glow=1..}] glow 1
replaceitem entity @s[scores={glow=1..}] slot.armor.feet 0 zex:red 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={glow=0}] slot.armor.feet 0 air
tag @s[scores={glow=0}] remove glow
