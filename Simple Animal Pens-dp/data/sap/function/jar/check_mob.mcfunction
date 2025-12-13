tag @s add picker_test

execute as @p[tag=picker_player] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","looking_at":{"nbt":"{Tags:[\"picker_test\"]}"}}}} run tag @e[tag=picker_test] add picker_target
tag @s remove picker_test