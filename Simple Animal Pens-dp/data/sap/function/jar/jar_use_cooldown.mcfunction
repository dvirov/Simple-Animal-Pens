scoreboard players remove @s sap.use_cooldown 1
execute if score @s sap.use_cooldown matches 1.. run return run advancement revoke @s only sap:jar_use_cooldown
advancement revoke @s only sap:release_mob
advancement revoke @s only sap:use_jar
