execute as @e[type=interaction,tag=sap.pen_interaction,distance=..5,limit=10] at @s unless entity @n[tag=sap.pen_brain,distance=..0.1] run function sap:break/restore_pen
function sap:break/item_drop

fill ~ ~ ~ ~ ~ ~ air replace structure_void
#kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:minecraft:structure_void",count:1}}]
function sap:kill
