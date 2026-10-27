tag @s add picker_test

execute as @p[tag=picker_player] if predicate sap:mob_picker run tag @e[tag=picker_test] add picker_target
tag @s remove picker_test