
scoreboard players operation #ray_distance sap.value = #ray_distance_backup sap.value
scoreboard players add #cast_try sap.value 1

execute if score #cast_try sap.value matches 1 positioned ^0.3 ^ ^ run function sap:folder/custom_block_cast/raycast
execute if score #cast_try sap.value matches 2 positioned ^-0.3 ^ ^ run function sap:folder/custom_block_cast/raycast
execute if score #cast_try sap.value matches 3 positioned ^ ^0.3 ^ run function sap:folder/custom_block_cast/raycast
execute if score #cast_try sap.value matches 4 positioned ^ ^-0.3 ^ run function sap:folder/custom_block_cast/raycast
