# 方块
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "wool"]}}]}] run function jkbw:play/shop/item/block/main {item:wool, count:16, Res:Iron, res:iron_ingot, color:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "terracotta"]}}]}] run function jkbw:play/shop/item/block/main {item:terracotta, count:16, Res:Iron, res:iron_ingot, color:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "glass"]}}]}] run function jkbw:play/shop/item/block/main {item:stained_glass, count:4, Res:Iron, res:iron_ingot, color:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "end_stone"]}}]}] run function jkbw:play/shop/item/block/main {item:end_stone, count:12, Res:Iron, res:iron_ingot, color:-1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "ladder"]}}]}] run function jkbw:play/shop/item/block/main {item:ladder, count:8, Res:Iron, res:iron_ingot, color:-1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "oak_planks"]}}]}] run function jkbw:play/shop/item/block/main {item:oak_planks, count:16, Res:Gold, res:gold_ingot, color:-1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "obsidian"]}}]}] run function jkbw:play/shop/item/block/main {item:obsidian, count:4, Res:Emerald, res:emerald, color:-1}

# 工具
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "shears"]}}]}] run function jkbw:play/shop/item/tool/main {Tool:Shears, tool:shears}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "axe"]}}]}] run function jkbw:play/shop/item/tool/main {Tool:Axe, tool:axe}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "pickaxe"]}}]}] run function jkbw:play/shop/item/tool/main {Tool:Pickaxe, tool:pickaxe}