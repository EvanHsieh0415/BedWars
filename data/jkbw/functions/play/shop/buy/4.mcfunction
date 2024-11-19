# 轮换物品
execute if score #ENABLE_fruit jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "fruit"]}}]}] run function jkbw:play/shop/item/alternation/fruit
execute if score #ENABLE_trident jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "trident"]}}]}] run function jkbw:play/shop/item/alternation/trident
execute if score #ENABLE_arrow_s jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "arrow_s"]}}]}] run function jkbw:play/shop/item/alternation/tipped_arrow
execute if score #ENABLE_crossbow_max jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "crossbow_max"]}}]}] run function jkbw:play/shop/item/alternation/crossbow_max
execute if score #ENABLE_ice_bridge jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "ice_bridge"]}}]}] run function jkbw:play/shop/item/alternation/ice_bridge
