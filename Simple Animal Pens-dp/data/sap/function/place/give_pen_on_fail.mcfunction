

execute if entity @s[tag=sap.oak] run function sap:give/animal_pen_oak
execute if entity @s[tag=sap.spruce] run function sap:give/animal_pen_spruce
execute if entity @s[tag=sap.birch] run function sap:give/animal_pen_birch
execute if entity @s[tag=sap.jungle] run function sap:give/animal_pen_jungle
execute if entity @s[tag=sap.acacia] run function sap:give/animal_pen_acacia
execute if entity @s[tag=sap.dark_oak] run function sap:give/animal_pen_dark_oak
execute if entity @s[tag=sap.mangrove] run function sap:give/animal_pen_mangrove
execute if entity @s[tag=sap.cherry] run function sap:give/animal_pen_cherry
execute if entity @s[tag=sap.pale_oak] run function sap:give/animal_pen_pale_oak
execute if entity @s[tag=sap.bamboo] run function sap:give/animal_pen_bamboo
execute if entity @s[tag=sap.crimson] run function sap:give/animal_pen_crimson
execute if entity @s[tag=sap.warped] run function sap:give/animal_pen_warped
execute if entity @s[tag=sap.poplar] run function sap:give/animal_pen_poplar



execute if items entity @s weapon.mainhand glow_item_frame run item modify entity @a weapon.mainhand sap:add1 
execute if items entity @s weapon.mainhand glow_item_frame run item modify entity @a weapon.mainhand sap:delete_item
execute if items entity @s weapon.offhand glow_item_frame run item modify entity @a weapon.offhand sap:add1 
execute if items entity @s weapon.offhand glow_item_frame run item modify entity @a weapon.offhand sap:delete_item

tag @s remove sap.oak
tag @s remove sap.spruce
tag @s remove sap.birch
tag @s remove sap.jungle
tag @s remove sap.acacia
tag @s remove sap.dark_oak
tag @s remove sap.mangrove
tag @s remove sap.cherry
tag @s remove sap.pale_oak
tag @s remove sap.bamboo
tag @s remove sap.crimson
tag @s remove sap.warped
tag @s remove sap.poplar
