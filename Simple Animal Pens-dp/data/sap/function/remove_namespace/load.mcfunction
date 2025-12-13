scoreboard objectives add remove_namespace dummy

scoreboard players set rn.start remove_namespace 0
scoreboard players set rn.end remove_namespace 1
scoreboard players set rn.fail remove_namespace 1

data remove storage remove_namespace:main tmp
data remove storage remove_namespace:main output