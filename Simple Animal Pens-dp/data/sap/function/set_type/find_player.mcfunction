# as all free interactions
# at player



scoreboard players set sap.boolint sap.bool 0

execute on target store result score sap.boolint sap.bool if entity @s[tag=this]

execute if score sap.boolint sap.bool matches 1 unless items entity @p[tag=this] weapon.mainhand *[custom_data~{jar_data:{mob_id:"empty"}}] run tag @s remove sap.pen_is_free
execute if score sap.boolint sap.bool matches 1 at @s as @p[tag=this] run function sap:set_type/get_jar_contents


execute if score sap.boolint sap.bool matches 1 run data remove entity @s interaction

