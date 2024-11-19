## 特殊物品
# 方块
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "sponge"]}}]}] run function jkbw:play/shop/item/block/sponge

# 带优惠
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "tnt"]}}]}] run function jkbw:play/shop/item/special/tnt

# 无附加物品
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "golden_apple"]}}]}] run function jkbw:play/shop/item/special/apple
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "pearl"]}}]}] run function jkbw:play/shop/item/special/pearl

# 自定义
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "tower"]}}]}] run function jkbw:play/shop/item/special/tower
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "silverfish"]}}]}] run function jkbw:play/shop/item/special/silverfish
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "fireball"]}}]}] run function jkbw:play/shop/item/special/fireball
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "iron_golem"]}}]}] run function jkbw:play/shop/item/special/iron_golem
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "water"]}}]}] run function jkbw:play/shop/item/special/water
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "egg"]}}]}] run function jkbw:play/shop/item/special/egg
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "platform"]}}]}] run function jkbw:play/shop/item/special/platform

# 资源
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "iron"]}}]}] run function jkbw:play/shop/item/res/iron
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "gold"]}}]}] run function jkbw:play/shop/item/res/gold
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "diamond"]}}]}] run function jkbw:play/shop/item/res/diamond
execute if score #res_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["item", "emerald"]}}]}] run function jkbw:play/shop/item/res/emerald

# 指南针
execute if entity @e[type=text_display,tag=jkbw_bed_red,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.red,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "red"]}}]}] run function jkbw:play/shop/item/compass/red
execute if entity @e[type=text_display,tag=jkbw_bed_blue,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.blue,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "blue"]}}]}] run function jkbw:play/shop/item/compass/blue
execute if score #teams jkbw.mem matches 3.. if entity @e[type=text_display,tag=jkbw_bed_green,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.green,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "green"]}}]}] run function jkbw:play/shop/item/compass/green
execute if score #teams jkbw.mem matches 4.. if entity @e[type=text_display,tag=jkbw_bed_yellow,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.yellow,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "yellow"]}}]}] run function jkbw:play/shop/item/compass/yellow
execute if score #teams jkbw.mem matches 5.. if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.cyan,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "cyan"]}}]}] run function jkbw:play/shop/item/compass/cyan
execute if score #teams jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_bed_white,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.white,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "white"]}}]}] run function jkbw:play/shop/item/compass/white
execute if score #teams jkbw.mem matches 7.. if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.pink,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "pink"]}}]}] run function jkbw:play/shop/item/compass/pink
execute if score #teams jkbw.mem matches 8.. if entity @e[type=text_display,tag=jkbw_bed_gray,scores={jkbw.Bed.State=3},limit=1] as @s[team=!jkbw.gray,nbt=!{EnderItems: [{tag: {jkbw: ["compass", "gray"]}}]}] run function jkbw:play/shop/item/compass/gray
