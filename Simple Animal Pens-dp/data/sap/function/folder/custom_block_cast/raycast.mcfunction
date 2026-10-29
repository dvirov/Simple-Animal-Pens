
scoreboard players remove #ray_distance sap.value 1

##
#particle flame
##
execute if block ~ ~ ~ andesite_wall[north=none,south=none,east=none,west=none,up=false] run return run function sap:folder/custom_block_cast/custom_block_set with storage sap:temp

execute if score #ray_distance sap.value matches 1.. positioned ^ ^ ^0.1 run function sap:folder/custom_block_cast/raycast
execute if score #ray_distance sap.value matches ..0 at @s anchored eyes run function sap:folder/custom_block_cast/backup_raycast

