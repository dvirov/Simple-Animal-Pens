
execute if items entity @p[tag=this] weapon.mainhand *[minecraft:custom_data~{smithed:{ignore:{functionality:1b}}}] run return fail

scoreboard players set @s sap.function_cooldown 12000
scoreboard players operation @s sap.function_cooldown -= @s sap.entity_count
scoreboard players add @s sap.function_cooldown 100

execute as @p[tag=this] run function sap:click_functions/loot/specific/collect_honey

