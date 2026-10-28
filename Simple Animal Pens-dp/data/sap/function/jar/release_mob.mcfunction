# as at player
execute if score @s sap.use_cooldown matches 1.. run return fail
advancement revoke @s only sap:jar_use_cooldown
scoreboard players set @s sap.use_cooldown 20




#copy jar contents
data modify storage sap:tmp tmp set from entity @s SelectedItem.components.minecraft:custom_data.jar_data


scoreboard players set temp sap.clc_count 0
# get the amount of mobs stored in the jar 
execute store result score temp sap.clc_count run data get entity @s SelectedItem.components.minecraft:custom_data.jar_data.count
#fail if jar is empty
execute if score temp sap.clc_count matches ..0 run return fail
# remove 1
execute store result storage sap:tmp tmp.count int 1 run scoreboard players operation temp sap.clc_count -= 1 sap.num

function sap:jar/summon_released_mob with entity @s SelectedItem.components.minecraft:custom_data.jar_data

function sap:jar/add_entity_count with storage sap:tmp tmp

execute as @n[tag=sap.released_mob,limit=1,type=#sap:fit_in_jar] if data entity @s Color run function sap:jar/extra/get_color_name
execute as @n[tag=sap.released_mob,limit=1,type=#sap:fit_in_jar] if data entity @s RabbitType run function sap:jar/extra/get_rabbittype_name
execute as @n[tag=sap.released_mob,limit=1,type=#sap:fit_in_jar] if data entity @s Type run function sap:jar/extra/get_mooshroomtype_name
execute as @n[tag=sap.released_mob,limit=1,type=#sap:fit_in_jar] run tag @s remove sap.released_mob


data modify storage remove_namespace:main input set from storage sap:tmp tmp.variant
function sap:remove_namespace/1
data modify storage sap:tmp tmp.variant set from storage remove_namespace:main output


execute unless data storage sap:tmp {tmp:{color:none}} run data modify storage sap:tmp tmp.variant set from storage sap:tmp tmp.color

#update lore
function sap:jar/lore with storage sap:tmp tmp

#remove data from jar if empty
execute if data entity @s SelectedItem.components.minecraft:custom_data.jar_data{count:0} run function sap:jar/reset_jar

