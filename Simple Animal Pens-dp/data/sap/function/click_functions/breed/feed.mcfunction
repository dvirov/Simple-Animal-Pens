#run as pen brain

execute if score @s sap.breed_cooldown matches 1.. run return fail
execute if score @s sap.entity_count matches ..1 run return fail

data merge entity @s {InLove:600}
particle heart ~ ~0.5 ~ 0.3 0.3 0.3 1 3

execute as @p[tag=this] run function sap:click_functions/breed/breed