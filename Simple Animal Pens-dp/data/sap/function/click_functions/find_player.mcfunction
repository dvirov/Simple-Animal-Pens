scoreboard players set sap.boolint sap.bool 0
tag @s add me
execute on target store result score sap.boolint sap.bool if entity @s[tag=this]

execute if score sap.boolint sap.bool matches 1 at @s as @n[distance=..0.1,tag=sap.pen_brain,type=#sap:fit_in_jar] run function sap:click_functions/secondary_loot_macro with entity @s data
#execute  on  run

execute if score sap.boolint sap.bool matches 1 run data remove entity @s interaction
tag @s remove me