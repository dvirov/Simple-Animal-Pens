
#debug tools
#$say $(start) - $(end) 
#say ---------

# get next in index
$execute store success score rn.fail remove_namespace run data modify storage remove_namespace:main tmp.value set string storage remove_namespace:main input $(start) $(end)

# add score to next call
scoreboard players add rn.start remove_namespace 1
scoreboard players add rn.end remove_namespace 1

# return to main function
function sap:remove_namespace/1

