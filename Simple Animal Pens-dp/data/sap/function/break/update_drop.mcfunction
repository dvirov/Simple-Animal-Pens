function sap:break/set_custom_data with storage sap:tmp tmp

execute as @n[distance=..0.1,tag=sap.pen_brain] if data entity @s Color run function sap:jar/extra/get_color_name

data modify storage remove_namespace:main input set from storage sap:tmp tmp.variant
function sap:remove_namespace/1
data modify storage sap:tmp tmp.variant set from storage remove_namespace:main output

function sap:break/set_lore with storage sap:tmp tmp

