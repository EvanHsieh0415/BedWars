# 剑
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sword_stone"]}}]}] run function jkbw:play/shop/item/weapon/sword {material:stone, damage:5, Res:Iron, res:iron_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sword_iron"]}}]}] run function jkbw:play/shop/item/weapon/sword {material:iron, damage:6, Res:Gold, res:gold_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sword_diamond"]}}]}] run function jkbw:play/shop/item/weapon/sword {material:diamond, damage:7, Res:Emerald, res:emerald}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "stick"]}}]}] run function jkbw:play/shop/item/weapon/common {id:1, item:stick}
execute if score #attack_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "shield"]}}]}] run function jkbw:play/shop/item/weapon/common {id:2, item:shield}

# 弓
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "arrow"]}}]}] run function jkbw:play/shop/item/weapon/common {id:3, item:arrow}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "bow1"]}}]}] run function jkbw:play/shop/item/weapon/bow {id:1, Res:Gold, res:gold_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "bow2"]}}]}] run function jkbw:play/shop/item/weapon/bow {id:2, Res:Gold, res:gold_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "bow3"]}}]}] run function jkbw:play/shop/item/weapon/bow {id:3, Res:Emerald, res:emerald}

# 盔甲
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "armor_chain"]}}]}] run function jkbw:play/shop/item/armor {id:1, Res:Iron, res:iron_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "armor_iron"]}}]}] run function jkbw:play/shop/item/armor {id:2, Res:Gold, res:gold_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "armor_diamond"]}}]}] run function jkbw:play/shop/item/armor {id:3, Res:Emerald, res:emerald}

# 药水（FAQ mj 4 lacking of consistency）
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_speed"]}}]}] run function jkbw:play/shop/item/potion {id: 1, name:speed, show:swiftness, Res:Emerald, res:emerald}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_jump"]}}]}] run function jkbw:play/shop/item/potion {id: 2, name:jump_boost, show:leaping, Res:Emerald, res:emerald}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_invisibility"]}}]}] run function jkbw:play/shop/item/potion {id: 3, name:invisibility, show:invisibility, Res:Emerald, res:emerald}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_luck"]}}]}] run function jkbw:play/shop/item/potion {id: 4, name:luck, show:luck, Res:Gold, res:gold_ingot}
