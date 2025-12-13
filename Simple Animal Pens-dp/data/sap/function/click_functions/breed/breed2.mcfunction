# run as pen brain 

execute store result storage sap:tmp tmp.remove_items int 1 run scoreboard players get @s sap.entity_count

execute store result score @p[tag=this] sap.item_count if score @p[tag=this] sap.item_count >= @s sap.entity_count run scoreboard players operation @s sap.entity_count /= 2 sap.num


execute as @p[tag=this,gamemode=!creative] run function sap:click_functions/breed/remove_items with storage sap:tmp tmp

scoreboard players set @s sap.breed_cooldown 2000
#scoreboard players operation @s sap.breed_cooldown -= @s sap.entity_count
#scoreboard players add @s sap.breed_cooldown 100



execute on passengers run scoreboard players operation @s sap.entity_count += @p[tag=this] sap.item_count
execute store result score @s sap.entity_count on passengers run scoreboard players get @s sap.entity_count
execute on passengers run data merge entity @s {text:[{"translate":"sap.translate.count",fallback:"Count:\n"},{"score":{"name":"@s","objective":"sap.entity_count"}}]}


