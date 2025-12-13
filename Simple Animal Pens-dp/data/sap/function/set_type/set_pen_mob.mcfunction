# summon the main mob "brain"
# as player

$summon $(mob_id) ~ ~ ~ {data:{"mob_id":"$(mob_id)","variant":"$(variant)","color":"$(color)","type":"$(type)"},CustomName:"brain",Invulnerable:1b,NoAI:1b,variant:"$(variant)",Color:$(color),RabbitType:$(color),IsChickenJockey:1b,PersistenceRequired:1b,Tags:["sap.animal_pen","sap.pen_brain","smithed.entity"],Passengers:[{id:"minecraft:text_display",CustomName:"text",Tags:["sap.animal_pen","smithed.entity"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:[{translate:"sap.translate.count",fallback:"Count:\n"},{"score":{"name":"@s","objective":"sap.entity_count"}}]}],attributes:[{id:"minecraft:scale",base:0.5}]}



$scoreboard players set @n[type=text_display,distance=..1,tag=sap.animal_pen] sap.entity_count $(count)
execute as @n[type=text_display,distance=..1,tag=sap.animal_pen] run data merge entity @s {text:[{"translate":"sap.translate.count",fallback:"Count:\n"},{"score":{"name":"@s","objective":"sap.entity_count"}}]}

execute as @e[sort=arbitrary,distance=..0.1,type=#sap:fit_in_jar,tag=sap.pen_brain] run function sap:set_type/set_pen_mob_modifier with entity @p[tag=this] SelectedItem.components.minecraft:custom_data.jar_data 
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand sap:delete_item

