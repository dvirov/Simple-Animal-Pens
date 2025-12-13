advancement revoke @s only sap:left_click_function


tag @s add this

execute as @e[type=interaction,distance=..10,tag=sap.pen_interaction] at @s run function sap:click_functions/find_attacker

tag @s remove this
