execute as @s[scores={casen=7}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Charged]§7§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=6}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Charge§7d]§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=5}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Charg§7ed]§7§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=4}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Cha§7rged]§7§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=3}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Ch§7arged]§7§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=2}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[C§7harged]§7§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=1}] run titleraw @s[scores={sen=1..}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[§7Charged]§7§r "},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}

execute as @s[scores={casen=7}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Charged]§7§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=6}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Charge§7d]§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=5}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Char§7ged]§7§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=4}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Cha§7rged]§7§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=3}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[Ch§7arged]§7§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=2}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[C§7harged]§7§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}
execute as @s[scores={casen=1}] run titleraw @s[scores={sen=0}] actionbar {"rawtext":[{"text":"§9Sniper§r "},{"text":"§b[§7Charged]§7§r §4"},{"score":{"name":"@s","objective":"sen"}},{"text":"/7"}]}

replaceitem entity @s[scores={casen=0},tag=!reload] slot.weapon.mainhand 0 gun:sen