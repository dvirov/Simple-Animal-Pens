advancement revoke @s only sap:right_click_function

# 
execute if items entity @s weapon.mainhand *[custom_data~{id:"animal_jar"}] run return fail
#
tag @s add this
execute as @e[type=interaction,distance=..10,tag=sap.pen_interaction] run function sap:click_functions/find_player


tag @s remove this
