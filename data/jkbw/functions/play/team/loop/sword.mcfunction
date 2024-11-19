# 有无剑/非木剑
execute store success score @s jkbw.Player.HasSword run clear @s #jkbw:sword/any 0
execute store success score @s jkbw.Player.HasSwordNotWood run clear @s #jkbw:sword/not_wood{Unbreakable: True} 0

# 有非木剑时清理木剑，无剑时给予木剑
clear @s[scores={jkbw.Player.HasSwordNotWood=1}] wooden_sword
execute unless score #attack_mode jkbw.mem matches 1 run give @s[scores={jkbw.Player.HasSword=0,jkbw.Player.HasSwordNotWood=0}] wooden_sword{Unbreakable: True, CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "sword", "0"], HideFlags: 28, AttributeModifiers: [{Operation: 0, Amount: 4, UUID: [I; 1, 0, 0, 1], AttributeName: "generic.attack_damage", Name: "a", Slot: "mainhand"}]}
execute if score #attack_mode jkbw.mem matches 1 run give @s[scores={jkbw.Player.HasSword=0,jkbw.Player.HasSwordNotWood=0}] wooden_sword{Unbreakable: True, CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "sword", "0"], HideFlags: 28}

# 锋利剑的清理
execute if entity @e[type=text_display,tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.red] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if entity @e[type=text_display,tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.blue] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if score #teams jkbw.mem matches 3.. if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.green] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if score #teams jkbw.mem matches 4.. if entity @e[type=text_display,tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.yellow] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if score #teams jkbw.mem matches 5.. if entity @e[type=text_display,tag=jkbw_spawn_cyan,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.cyan] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if score #teams jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_spawn_white,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.white] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if score #teams jkbw.mem matches 7.. if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.pink] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}
execute if score #teams jkbw.mem matches 8.. if entity @e[type=text_display,tag=jkbw_spawn_gray,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.gray] #jkbw:sword/any{Enchantments: [{id: "minecraft:sharpness"}]}

# 锋利剑的获取
execute unless score #attack_mode jkbw.mem matches 1 run function jkbw:play/team/loop/sword/old
execute if score #attack_mode jkbw.mem matches 1 run function jkbw:play/team/loop/sword/new

# 指南针
execute store success score @s jkbw.Player.HasCompass run clear @s compass 0
item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.red] hotbar.8 from block 10110209 5 10110222 container.0
item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.blue] hotbar.8 from block 10110209 5 10110222 container.1
execute if score #teams jkbw.mem matches 3.. run item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.green] hotbar.8 from block 10110209 5 10110222 container.2
execute if score #teams jkbw.mem matches 4.. run item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.yellow] hotbar.8 from block 10110209 5 10110222 container.3
execute if score #teams jkbw.mem matches 5.. run item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.cyan] hotbar.8 from block 10110209 5 10110222 container.4
execute if score #teams jkbw.mem matches 6.. run item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.white] hotbar.8 from block 10110209 5 10110222 container.5
execute if score #teams jkbw.mem matches 7.. run item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.pink] hotbar.8 from block 10110209 5 10110222 container.6
execute if score #teams jkbw.mem matches 8.. run item replace entity @s[nbt=!{Inventory: [{Slot: 8b}]},scores={jkbw.Player.HasCompass=0},team=jkbw.gray] hotbar.8 from block 10110209 5 10110222 container.7