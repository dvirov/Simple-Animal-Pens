# run as brain with data

#$say -$(type)-
#$say -$(mob_id)-


$execute if items entity @p[tag=this] weapon.mainhand #$(type)_food if entity @s[type=$(mob_id)] run function sap:click_functions/breed/feed

execute unless items entity @p[tag=this] weapon.mainhand #sap:bypass_interact_cooldown if entity @s[scores={sap.function_cooldown=1..}] run return fail

$execute if items entity @p[tag=this] weapon.mainhand #sap:used_on_$(type) if entity @s[type=$(mob_id)] run function sap:click_functions/loot/interact_with_$(type)
execute as @p[tag=this] run function sap:damage_item/item_damage





