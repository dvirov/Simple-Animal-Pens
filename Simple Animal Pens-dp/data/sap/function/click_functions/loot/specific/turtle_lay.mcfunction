
scoreboard players set @s sap.function_cooldown 12000
scoreboard players operation @s sap.function_cooldown -= @s sap.entity_count
scoreboard players add @s sap.function_cooldown 100


loot spawn ~ ~ ~ fish sap:turtle_lay ~ ~ ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
