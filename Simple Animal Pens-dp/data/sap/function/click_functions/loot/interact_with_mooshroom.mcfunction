
execute if items entity @p[tag=this] weapon.mainhand *[minecraft:custom_data~{smithed:{ignore:{functionality:1b}}}] run return fail


execute if items entity @p[tag=this] weapon.mainhand #sap:extra/brown_mooshroom_flowers run function sap:click_functions/loot/specific/mooshroom_feed_flower
execute if items entity @p[tag=this] weapon.mainhand minecraft:shears run function sap:click_functions/loot/specific/mooshroom_shear
execute as @p[tag=this] if items entity @s weapon.mainhand minecraft:bucket run function sap:click_functions/loot/specific/mooshroom_milk
execute as @p[tag=this] if items entity @s weapon.mainhand minecraft:bowl run function sap:click_functions/loot/specific/mooshroom_bowl
