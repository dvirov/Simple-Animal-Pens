
# store the current range in storage
execute store result storage remove_namespace:main tmp.start int 1 run scoreboard players get rn.start remove_namespace
execute store result storage remove_namespace:main tmp.end int 1 run scoreboard players get rn.end remove_namespace

# save index location after :
execute if data storage remove_namespace:main {tmp:{value:":"}} store result storage remove_namespace:main tmp.final.start int 1 run scoreboard players get rn.start remove_namespace
data remove storage remove_namespace:main tmp.value


execute unless score rn.fail remove_namespace matches 0 run function sap:remove_namespace/2 with storage remove_namespace:main tmp
execute if score rn.fail remove_namespace matches 0 store result storage remove_namespace:main tmp.final.end int 1 run scoreboard players remove rn.start remove_namespace 1

execute unless score rn.fail remove_namespace matches 0 run return fail

function sap:remove_namespace/3 with storage remove_namespace:main tmp.final

#reset data for next run
scoreboard players set rn.start remove_namespace 0
scoreboard players set rn.end remove_namespace 1
scoreboard players set rn.fail remove_namespace 1
data remove storage remove_namespace:main tmp

# display output // you can use it from anywhere 
# stored in storage remove_namespace output
#tellraw @a {storage:"remove_namespace:main",nbt:output}