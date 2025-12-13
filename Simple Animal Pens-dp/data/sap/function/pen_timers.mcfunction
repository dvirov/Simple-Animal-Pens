
execute if score @s sap.breed_cooldown matches 1.. run scoreboard players remove @s sap.breed_cooldown 1 
execute if score @s sap.function_cooldown matches 1.. run scoreboard players remove @s sap.function_cooldown 1 

execute if score @s[type=sheep] sap.function_cooldown matches 0 run data merge entity @s {Sheared:false}

