# run as all pen entities

execute if predicate sap:chance-0.2 run function sap:pen_break_check

execute if entity @s[type=#sap:fit_in_jar,tag=sap.pen_brain] run function sap:pen_timers

execute if predicate sap:chance-0.2