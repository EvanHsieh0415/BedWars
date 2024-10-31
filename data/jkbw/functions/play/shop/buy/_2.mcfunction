# 武器
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "stick"]}}]}] run function jkbw:play/shop/urf/weapon/common {item:stick,id:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "fishing_rod"]}}]}] run function jkbw:play/shop/urf/weapon/common {item:fishing_rod,id:2}
execute if score #attack_mode jkbw.mem matches 1 as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "shield"]}}]}] run function jkbw:play/shop/urf/weapon/common {item:shield,id:3}

execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "stone_sword1"]}}]}] run function jkbw:play/shop/urf/weapon/stone_sword {id:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "stone_sword2"]}}]}] run function jkbw:play/shop/urf/weapon/stone_sword {id:2}

execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "wooden_sword"]}}]}] run function jkbw:play/shop/urf/weapon/sword {item:wooden,id:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "iron_sword"]}}]}] run function jkbw:play/shop/urf/weapon/sword {item:iron,id:2}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "diamond_sword"]}}]}] run function jkbw:play/shop/urf/weapon/sword {item:diamond,id:3}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "golden_sword"]}}]}] run function jkbw:play/shop/urf/weapon/sword {item:golden,id:4}

execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "arrow"]}}]}] run function jkbw:play/shop/urf/weapon/arrow

execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "bow1"]}}]}] run function jkbw:play/shop/urf/weapon/bow {id:1}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "bow2"]}}]}] run function jkbw:play/shop/urf/weapon/bow {id:2}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "bow3"]}}]}] run function jkbw:play/shop/urf/weapon/bow {id:3}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "bow4"]}}]}] run function jkbw:play/shop/urf/weapon/bow {id:4}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "bow5"]}}]}] run function jkbw:play/shop/urf/weapon/bow {id:5}
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["urf", "bow6"]}}]}] run function jkbw:play/shop/urf/weapon/bow {id:6}
