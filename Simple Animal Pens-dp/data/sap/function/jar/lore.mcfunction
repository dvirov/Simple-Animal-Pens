$item modify entity @s weapon.mainhand \
{\
  "function": "minecraft:set_lore",\
  "entity": "this",\
  "lore": [\
    [{\
      "translate":"sap.translate.type",\
      "fallback":"Type: ",\
      "color": "gold",\
      "italic": false\
    },\
    {\
      "text": "\"$(type)\"",\
      "color": "red",\
      "italic": false\
    }],\
    [{\
      "translate":"sap.translate.variant",\
      "fallback":"Variant: ",\
      "color": "gold",\
      "italic": false\
    },\
    {\
      "text":"\"$(variant)\"",\
      "color": "red",\
      "italic": false\
    }],\
    [{\
      "translate":"sap.translate.count",\
      "fallback":"Count: ",\
      "color": "gold",\
      "italic": false\
    },\
    {\
      "text": "$(count)",\
      "color": "red",\
      "italic": false\
    }],\
    [{\
    "text":"Simple Animal Pens",\
    "color":"blue"\
    }]\
  ],\
  "mode": "replace_all"\
}