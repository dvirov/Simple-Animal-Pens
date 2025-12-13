# as interaction
scoreboard players set sap.boolint sap.bool 0
execute on attacker store result score sap.boolint sap.bool if entity @s[tag=this]

execute if score sap.boolint sap.bool matches 1 if items entity @p[tag=this] weapon.mainhand #sap:tool_to_kill run function sap:click_functions/kill
execute if score sap.boolint sap.bool matches 1 if items entity @p[tag=this] weapon.mainhand #sap:tool_to_break run function sap:click_functions/break


#execute  on  run

execute if score sap.boolint sap.bool matches 1 run data remove entity @s attack
