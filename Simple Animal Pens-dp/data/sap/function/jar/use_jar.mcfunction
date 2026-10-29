# as player
execute if score @s sap.use_cooldown matches 1.. run return fail
advancement revoke @s only sap:jar_use_cooldown
scoreboard players set @s sap.use_cooldown 10



scoreboard players set tmp sap.verify 0
data remove storage sap:tmp tmp


tag @s add picker_player
execute store result storage sap:tmp range double 0.5 run attribute @s minecraft:entity_interaction_range get
function sap:jar/m_search with storage sap:tmp
execute as @n[tag=picker_target] at @s run function sap:jar/get_mob_id

# verify matching mob in jar
data modify storage sap:tmp tmp.holding set from entity @s SelectedItem.components.minecraft:custom_data.jar_data.mob_id
function sap:jar/verify_mob_macro with storage sap:tmp tmp
execute unless score tmp sap.verify matches 1 run return run function sap:jar/incorect_mob

# if mob matching

function sap:jar/store_mob







