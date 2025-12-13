execute if entity @s[gamemode=creative] run return fail
execute unless items entity @s weapon.mainhand *[minecraft:max_damage] run return fail

execute store result score #damage sap.item_damage run data get entity @s SelectedItem.components."minecraft:damage"

execute store result storage sap:tmp damage.value int 1 run scoreboard players add #damage sap.item_damage 1

execute unless items entity @s weapon.mainhand *[damage~{durability:{min:-999,max:1}}] run return run function sap:damage_item/item_damage_macro with storage sap:tmp damage
playsound minecraft:entity.item.break
item modify entity @s weapon.mainhand sap:delete_item