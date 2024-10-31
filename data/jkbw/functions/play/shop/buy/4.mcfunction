# 轮换物品
execute if score #ENABLE_fruit jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "fruit"]}}]}] run function jkbw:play/shop/item/special/normal {name:fruit, show:chorus_fruit, Res:Gold, res:gold_ingot}
execute if score #ENABLE_trident jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "trident"]}}]}] run function jkbw:play/shop/item/weapon/common {id:4, item:trident}
execute if score #ENABLE_arrow_s jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "arrow_s"]}}]}] run function jkbw:play/shop/item/weapon/common {id:5, item:tipped_arrow}
execute if score #ENABLE_crossbow_max jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "crossbow_max"]}}]}] run function jkbw:play/shop/item/special/custom {id:8, name:crossbow_max, Res:Emerald, res:emerald}
execute if score #ENABLE_ice_bridge jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "ice_bridge"]}}]}] run function jkbw:play/shop/item/special/custom {id:9, name:ice_bridge, Res:Gold, res:gold_ingot}
