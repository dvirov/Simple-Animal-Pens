# run as all pen entities

execute if entity @s[type=text_display] unless predicate sap:is_vehicle run function sap:kill
execute if entity @s[type=interaction] at @s unless block ~ ~ ~ oak_pressure_plate run function sap:break/break
execute if entity @s[type=#sap:fit_in_jar] at @s unless block ~ ~ ~ oak_pressure_plate run function sap:break/break


execute if entity @s[type=#sap:fit_in_jar,tag=sap.pen_brain] run function sap:pen_timers