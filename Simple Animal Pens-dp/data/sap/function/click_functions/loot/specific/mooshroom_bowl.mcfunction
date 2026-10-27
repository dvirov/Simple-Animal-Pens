playsound minecraft:entity.mooshroom.suspicious_milk
item modify entity @s weapon.mainhand sap:delete_item




execute at @n[tag=me,distance=..10,type=interaction] as @n[tag=sap.pen_brain,type=#sap:fit_in_jar] run loot give @p[tag=this] loot sap:brown_mooshroom_stew

execute as @n[tag=sap.pen_brain,type=#sap:fit_in_jar] run data remove entity @s stew_effects 
execute as @n[tag=sap.pen_brain,type=#sap:fit_in_jar] run tag @s remove sap.mooshroom_stew_effects







