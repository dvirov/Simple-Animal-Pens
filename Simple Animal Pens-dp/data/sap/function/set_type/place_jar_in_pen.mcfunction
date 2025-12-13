# as at player
advancement revoke @s only sap:place_jar_in_pen

tag @s add this


execute as @e[type=interaction,distance=..10,tag=sap.pen_is_free] run function sap:set_type/find_player
tag @s remove this

