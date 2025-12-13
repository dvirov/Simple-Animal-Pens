
execute if items entity @p[tag=this] weapon.mainhand *[minecraft:custom_data~{smithed:{ignore:{functionality:1b}}}] run return fail

execute as @p[tag=this] run function sap:click_functions/loot/specific/cow_milk