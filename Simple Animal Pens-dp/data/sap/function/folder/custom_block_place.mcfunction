advancement revoke @s only sap:place_animal_pen



# set the raycast distance
scoreboard players set #ray_distance sap.value 100

# save copy of the raycast distance and run the raycst 
scoreboard players operation #ray_distance_backup sap.value = #ray_distance sap.value
scoreboard players set #cast_try sap.value 0

data modify storage sap:temp custom_block set from entity @s SelectedItem.components.minecraft:custom_data.custom_block.func_path
execute anchored eyes run function sap:folder/custom_block_cast/raycast
data remove storage sap:temp custom_block
