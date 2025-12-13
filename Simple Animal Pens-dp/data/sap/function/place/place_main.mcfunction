advancement revoke @s only sap:place_animal_pen

tag @s add block_placed

execute as @e[type=glow_item_frame,distance=..16,tag=sap.animal_pen] at @s align xyz run function sap:place/detect_farm_type


tag @s remove block_placed
