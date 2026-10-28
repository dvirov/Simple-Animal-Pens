advancement revoke @s only sap:place_animal_pen

tag @s add block_placed

execute as @e[distance=..16,tag=sap.animal_pen,type=andesite_wall] at @s align xyz run function sap:place/detect_farm_type


tag @s remove block_placed
