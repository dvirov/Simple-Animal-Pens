
$scoreboard players set @s sap.entity_count $(count)
$scoreboard players set @s sap.breed_cooldown $(breed_cooldown)
$scoreboard players set @s sap.function_cooldown $(function_cooldown)


execute at @p[tag=this] positioned 0. 0 0. rotated ~45 0 positioned ^ ^ ^-.5 align xz facing -.5 0 -.5 rotated ~-45 0 positioned as @s run tp @s ~ ~ ~ ~-180 ~

