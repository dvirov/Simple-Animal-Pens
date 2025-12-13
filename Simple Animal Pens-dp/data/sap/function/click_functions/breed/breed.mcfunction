#run as player

execute store result score @s sap.item_count run data get entity @s SelectedItem.count
scoreboard players operation @s sap.item_count /= 2 sap.num 

execute as @n[distance=..10,type=#sap:fit_in_jar,tag=sap.pen_brain,nbt={InLove:600}] run function sap:click_functions/breed/breed2

scoreboard players set @s sap.item_count 0



