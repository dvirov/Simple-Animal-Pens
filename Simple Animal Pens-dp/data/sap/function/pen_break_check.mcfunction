# run as all pen entities

execute if entity @s[type=interaction] at @s unless block ~ ~ ~ minecraft:structure_void run function sap:break/break
execute if entity @s[type=interaction] at @s if block ~ ~-1 ~ #sap:pen_cant_survive run function sap:break/break
execute if entity @s[type=#sap:fit_in_jar] at @s unless block ~ ~ ~ minecraft:structure_void run function sap:break/break
execute if entity @s[type=text_display] unless predicate sap:is_vehicle run function sap:kill

