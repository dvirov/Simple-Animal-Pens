
$item modify entity @s weapon.mainhand \
{\
  "type": "minecraft:set_custom_data",\
  "tag": {\
    "id": "animal_jar",\
    "jar_data": {\
      "mob_id": "$(mob_id)",\
      "type": "$(type)",\
      "variant": "$(variant)",\
      "color": "$(color)",\
      "count": $(count),\
      "breed_cooldown": $(breed_cooldown),\
      "function_cooldown": $(function_cooldown)\
    }\
  }\
}