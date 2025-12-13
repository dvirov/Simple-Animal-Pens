$execute positioned ^ ^ ^$(range) as @e[type=#sap:fit_in_jar, distance=..$(range)] unless function sap:jar/blocked_mobs at @s run function sap:jar/check_mob


#execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","looking_at":{"type":"minecraft:cow"}}}}