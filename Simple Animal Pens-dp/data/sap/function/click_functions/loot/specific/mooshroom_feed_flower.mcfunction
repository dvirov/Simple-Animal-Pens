
execute unless data entity @s {Type:brown} run return fail

particle minecraft:effect ~ ~ ~ ~ ~ ~1 0 0

item modify entity @p[tag=this] weapon.mainhand sap:delete_item



tag @s add sap.mooshroom_stew_effects
execute if items entity @p[tag=this] weapon.mainhand minecraft:allium run data modify entity @s stew_effects set value [{duration:60,id:"minecraft:fire_resistance"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:azure_bluet run data modify entity @s stew_effects set value [{duration:220,id:"minecraft:blindness"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:open_eyeblossom run data modify entity @s stew_effects set value [{duration:220,id:"minecraft:blindness"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:blue_orchid run data modify entity @s stew_effects set value [{duration:7,id:"minecraft:saturation"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:dandelion run data modify entity @s stew_effects set value [{duration:7,id:"minecraft:saturation"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:golden_dandelion run data modify entity @s stew_effects set value [{duration:7,id:"minecraft:saturation"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:closed_eyeblossom run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:nausea"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:cornflower run data modify entity @s stew_effects set value [{duration:100,id:"minecraft:jump_boost"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:lily_of_the_valley run data modify entity @s stew_effects set value [{duration:220,id:"minecraft:poison"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:oxeye_daisy run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:regeneration"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:poppy run data modify entity @s stew_effects set value [{duration:100,id:"minecraft:night_vision"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:torchflower run data modify entity @s stew_effects set value [{duration:100,id:"minecraft:night_vision"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:white_tulip run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:weakness"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:red_tulip run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:weakness"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:pink_tulip run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:weakness"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:orange_tulip run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:weakness"}]
execute if items entity @p[tag=this] weapon.mainhand minecraft:wither_rose run data modify entity @s stew_effects set value [{duration:140,id:"minecraft:wither"}]
