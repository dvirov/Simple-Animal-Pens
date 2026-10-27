summon block_display ~ ~ ~ {Tags:["this"]}

ride @s mount @n[distance=..1,tag=this]
execute on vehicle run data modify storage sap:tmp tmp.mob_id set from entity @s Passengers[].id
ride @s dismount
kill @n[type=block_display,tag=this]
data modify storage sap:tmp tmp.variant set value "none"
data modify storage sap:tmp tmp.color set value "none"
data modify storage sap:tmp tmp.variant set from entity @s variant
data modify storage sap:tmp tmp.color set from entity @s Color
data modify storage sap:tmp tmp.color set from entity @s RabbitType
data modify storage sap:tmp tmp.color set from entity @s Type

data modify storage remove_namespace:main input set from storage sap:tmp tmp.mob_id
function sap:remove_namespace/1
data modify storage sap:tmp tmp.type set from storage remove_namespace:main output

