

execute align xyz run summon interaction ~.5 ~ ~.5 {width:1f,height:1.1f,Tags:["sap.poplar","sap.pen_is_free","sap.animal_pen","sap.pen_interaction","smithed.entity"],Passengers:[{id:"minecraft:item_display",Tags:["sap.animal_pen","smithed.entity"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"sap:animal_pen_poplar"}}}]}
setblock ~ ~ ~ minecraft:structure_void
#summon item_display ~0.5 ~1.1 ~0.5 {Motion:[0.0,0.0,0.0],Tags:["sap.animal_pen"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:acacia_fence"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0f,-0.5f,-0f],scale:[1f,1f,1f]}}
#summon interaction ~.5 ~ ~.5 {width:1f,height:0.1f,Tags:["sap.animal_pen"]}
