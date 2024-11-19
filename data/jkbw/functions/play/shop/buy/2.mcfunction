# 剑
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sword_stone"]}}]}] run function jkbw:play/shop/item/weapon/sword_stone
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sword_iron"]}}]}] run function jkbw:play/shop/item/weapon/sword_iron
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sword_diamond"]}}]}] run function jkbw:play/shop/item/weapon/sword_diamond
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "stick"]}}]}] run function jkbw:play/shop/item/weapon/stick
execute if score #attack_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "shield"]}}]}] run function jkbw:play/shop/item/weapon/shield

# 弓
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "arrow"]}}]}] run function jkbw:play/shop/item/weapon/arrow
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "bow1"]}}]}] run function jkbw:play/shop/item/weapon/bow1
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "bow2"]}}]}] run function jkbw:play/shop/item/weapon/bow2
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "bow3"]}}]}] run function jkbw:play/shop/item/weapon/bow3

# 盔甲
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "armor_chain"]}}]}] run function jkbw:play/shop/item/armor/1
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "armor_iron"]}}]}] run function jkbw:play/shop/item/armor/2
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "armor_diamond"]}}]}] run function jkbw:play/shop/item/armor/3

# 药水（FAQ mj 4 lacking of consistency）
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_speed"]}}]}] run function jkbw:play/shop/item/potion/speed
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_jump"]}}]}] run function jkbw:play/shop/item/potion/jump_boost
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_invisibility"]}}]}] run function jkbw:play/shop/item/potion/invisibility
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "potion_luck"]}}]}] run function jkbw:play/shop/item/potion/luck
