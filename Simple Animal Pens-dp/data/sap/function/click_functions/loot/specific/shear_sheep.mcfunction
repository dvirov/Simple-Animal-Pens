scoreboard players set @s sap.function_cooldown 12000
scoreboard players operation @s sap.function_cooldown -= @s sap.entity_count
scoreboard players add @s sap.function_cooldown 100


loot spawn ~ ~ ~ loot sap:shearing_sheep
execute as @e[type=sheep,tag=sap.animal_pen,distance=..0.1,sort=nearest] run data merge entity @s {Sheared:true}
