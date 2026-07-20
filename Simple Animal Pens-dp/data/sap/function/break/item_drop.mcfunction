# run as interaction and brain


#execute if entity @s[tag=sap.pen_is_free] run 
loot spawn ~ ~ ~ loot sap:pen_type_drop

execute unless entity @s[tag=sap.pen_brain] run return fail

loot spawn ~ ~ ~ loot sap:animal_jar



data modify storage sap:tmp tmp set from entity @s data

execute store result storage sap:tmp tmp.count int 1 run scoreboard players get @s sap.entity_count
execute store result storage sap:tmp tmp.breed_cooldown int 1 run scoreboard players get @s sap.breed_cooldown
execute store result storage sap:tmp tmp.function_cooldown int 1 run scoreboard players get @s sap.function_cooldown


execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_data":{id:animal_jar}}}}] run function sap:break/update_drop

