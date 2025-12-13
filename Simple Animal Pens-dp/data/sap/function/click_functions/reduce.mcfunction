# run as pen brain

execute if score @s sap.entity_count matches ..1 run return fail

scoreboard players remove @s sap.entity_count 1

execute on passengers store result score @s sap.entity_count run scoreboard players get @n[type=#sap:fit_in_jar,tag=sap.pen_brain] sap.entity_count

execute on passengers run data merge entity @s {text:[{"translate":"sap.translate.count",fallback:"Count:\n"},{"score":{"name":"@s","objective":"sap.entity_count"}}]}

execute as @p[tag=this] run loot spawn ~ ~ ~ kill @n[type=#sap:fit_in_jar] 

particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 10
playsound minecraft:entity.player.attack.weak player @a[distance=..6] ~ ~ ~