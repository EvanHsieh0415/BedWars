## 特殊物品
# 方块
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sponge"]}}]}] run function jkbw:play/shop/item/block/main {item:sponge, count:4, Res:Gold, res:gold_ingot, color:-1}

# 带优惠
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "tnt"]}}]}] run function jkbw:play/shop/item/special/tnt

# 无附加物品
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "golden_apple"]}}]}] run function jkbw:play/shop/item/special/normal {name:apple, show:golden_apple, Res:Gold, res:gold_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "pearl"]}}]}] run function jkbw:play/shop/item/special/normal {name:pearl, show:ender_pearl, Res:Emerald, res:emerald}

# 自定义
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "tower"]}}]}] run function jkbw:play/shop/item/special/custom {id:1, name:tower, Res:Iron, res:iron_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "silverfish"]}}]}] run function jkbw:play/shop/item/special/custom {id:2, name:silverfish, Res:Iron, res:iron_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "fireball"]}}]}] run function jkbw:play/shop/item/special/custom {id:3, name:fireball, Res:Iron, res:iron_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "iron_golem"]}}]}] run function jkbw:play/shop/item/special/custom {id:4, name:iron_golem, Res:Iron, res:iron_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "water"]}}]}] run function jkbw:play/shop/item/special/custom {id:5, name:water, Res:Gold, res:gold_ingot}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "egg"]}}]}] run function jkbw:play/shop/item/special/custom {id:6, name:egg, Res:Emerald, res:emerald}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "platform"]}}]}] run function jkbw:play/shop/item/special/custom {id:7, name:platform, Res:Gold, res:gold_ingot}

# 资源
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "iron"]}}]}] run function jkbw:play/shop/item/special/res {item:iron,name:iron_ingot}
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "gold"]}}]}] run function jkbw:play/shop/item/special/res {item:gold,name:gold_ingot}
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "diamond"]}}]}] run function jkbw:play/shop/item/special/res {item:diamond,name:diamond}
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "emerald"]}}]}] run function jkbw:play/shop/item/special/res {item:emerald,name:emerald}

# 指南针
execute if entity @e[type=text_display,tag=jkbw_bed_red,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.red,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "red"]}}]}] run function jkbw:play/shop/item/compass {id:1,team:red}
execute if entity @e[type=text_display,tag=jkbw_bed_blue,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.blue,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "blue"]}}]}] run function jkbw:play/shop/item/compass {id:2,team:blue}
execute if score #teams jkbw.mem matches 3.. if entity @e[type=text_display,tag=jkbw_bed_green,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.green,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "green"]}}]}] run function jkbw:play/shop/item/compass {id:3,team:green}
execute if score #teams jkbw.mem matches 4.. if entity @e[type=text_display,tag=jkbw_bed_yellow,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.yellow,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "yellow"]}}]}] run function jkbw:play/shop/item/compass {id:4,team:yellow}
execute if score #teams jkbw.mem matches 5.. if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.cyan,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "cyan"]}}]}] run function jkbw:play/shop/item/compass {id:5,team:cyan}
execute if score #teams jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_bed_white,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.white,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "white"]}}]}] run function jkbw:play/shop/item/compass {id:6,team:white}
execute if score #teams jkbw.mem matches 7.. if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.pink,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "pink"]}}]}] run function jkbw:play/shop/item/compass {id:7,team:pink}
execute if score #teams jkbw.mem matches 8.. if entity @e[type=text_display,tag=jkbw_bed_gray,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.gray,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "gray"]}}]}] run function jkbw:play/shop/item/compass {id:8,team:gray}