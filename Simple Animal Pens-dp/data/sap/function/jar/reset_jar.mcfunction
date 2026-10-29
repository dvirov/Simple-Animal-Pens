
item modify entity @s weapon.mainhand \
{\
  "type": "minecraft:set_custom_data",\
  "tag": {\
    "id": "animal_jar",\
    "jar_data": {\
      "mob_id": "empty",\
      "type": "empty",\
      "variant": "empty",\
      "color": "none",\
      "count": 0,\
      "breed_cooldown":0,\
      "function_cooldown": 0\
    }\
  }\
}




item modify entity @s weapon.mainhand \
{\
  "type": "minecraft:set_lore",\
  "entity": "this",\
  "lore": [\
        {\
          "translate": "sap.empty",\
          "fallback": "Empty",\
          "color": "red",\
          "italic": false\
        },\
        {\
          "text": "Simple Animal Pens",\
          "color": "blue"\
        }\
  ],\
  "mode": "replace_all"\
}