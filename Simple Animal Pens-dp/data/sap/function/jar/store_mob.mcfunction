# as

#data modify storage sap:tmp tmp set from entity @s SelectedItem.components.minecraft:custom_data.jar_data

scoreboard players set temp sap.clc_count 0
# get the amount of mobs stored in the jar 
execute store result score temp sap.clc_count run data get entity @s SelectedItem.components.minecraft:custom_data.jar_data.count
# add 1
execute store result storage sap:tmp tmp.count int 1 run scoreboard players operation temp sap.clc_count += 1 sap.num

execute store result storage sap:tmp tmp.breed_cooldown int 1 run data get entity @s SelectedItem.components.minecraft:custom_data.jar_data.breed_cooldown
execute store result storage sap:tmp tmp.function_cooldown int 1 run data get entity @s SelectedItem.components.minecraft:custom_data.jar_data.function_cooldown


## modify the custom data of the item
function sap:jar/add_entity_count with storage sap:tmp tmp

## modify the item lore

# here just for command order
execute as @n[tag=picker_target] at @s run function sap:jar/correct_mob
tag @s remove picker_player
tag @e[tag=picker_target] remove picker_target


data modify storage remove_namespace:main input set from storage sap:tmp tmp.variant
function sap:remove_namespace/1
data modify storage sap:tmp tmp.variant set from storage remove_namespace:main output

data modify storage sap:tmp tmp.variant set from storage sap:tmp tmp.color

function sap:jar/lore with storage sap:tmp tmp




