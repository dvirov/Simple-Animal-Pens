function sap:remove_namespace/load
function sap:damage_item/load
scoreboard objectives add sap.entity_count dummy
scoreboard objectives add sap.item_count dummy
scoreboard objectives add sap.breed_cooldown dummy
scoreboard objectives add sap.function_cooldown dummy
scoreboard objectives add sap.num dummy
scoreboard objectives add sap.clc_count dummy
scoreboard objectives add sap.verify dummy
scoreboard objectives add sap.bool dummy

scoreboard players set 2 sap.num 2
scoreboard players set 1 sap.num 1

# settings
scoreboard objectives add sap.settings dummy
execute unless score max_pen_loot_modifier sap.settings matches 100.. run scoreboard players set max_pen_loot_modifier sap.settings 100
execute unless score max_pen_loot_modifier sap.settings matches ..100 run scoreboard players set max_pen_loot_modifier sap.settings 100


