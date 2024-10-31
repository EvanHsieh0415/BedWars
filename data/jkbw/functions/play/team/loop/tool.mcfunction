# 重置玩家工具等级
execute unless score @s jkbw.Player.AxeLevels matches 1.. run scoreboard players set @s jkbw.Player.AxeLevels 0
execute unless score @s jkbw.Player.PickaxeLevels matches 1.. run scoreboard players set @s jkbw.Player.PickaxeLevels 0
execute unless score @s jkbw.Player.ShearsLevels matches 1.. run scoreboard players set @s jkbw.Player.ShearsLevels 0

## 清理
# 跨等级工具
clear @s[scores={jkbw.Player.ShearsLevels=0}] shears{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.ShearsLevels=1}] shears{jkbw: ["shears2"]}
clear @s[scores={jkbw.Player.ShearsLevels=1}] shears{jkbw: ["shears3"]}
clear @s[scores={jkbw.Player.ShearsLevels=1}] shears{jkbw: ["shears4"]}
clear @s[scores={jkbw.Player.ShearsLevels=2}] shears{jkbw: ["shears1"]}
clear @s[scores={jkbw.Player.ShearsLevels=2}] shears{jkbw: ["shears3"]}
clear @s[scores={jkbw.Player.ShearsLevels=2}] shears{jkbw: ["shears4"]}
clear @s[scores={jkbw.Player.ShearsLevels=3}] shears{jkbw: ["shears1"]}
clear @s[scores={jkbw.Player.ShearsLevels=3}] shears{jkbw: ["shears2"]}
clear @s[scores={jkbw.Player.ShearsLevels=3}] shears{jkbw: ["shears4"]}
clear @s[scores={jkbw.Player.ShearsLevels=4}] shears{jkbw: ["shears1"]}
clear @s[scores={jkbw.Player.ShearsLevels=4}] shears{jkbw: ["shears2"]}
clear @s[scores={jkbw.Player.ShearsLevels=4}] shears{jkbw: ["shears3"]}
clear @s[scores={jkbw.Player.AxeLevels=0}] #jkbw:axe/0{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.AxeLevels=1}] #jkbw:axe/1{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.AxeLevels=2}] #jkbw:axe/2{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.AxeLevels=3}] #jkbw:axe/3{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.AxeLevels=4}] #jkbw:axe/4{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.PickaxeLevels=0}] #jkbw:pickaxe/0{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.PickaxeLevels=1}] #jkbw:pickaxe/1{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.PickaxeLevels=2}] #jkbw:pickaxe/2{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.PickaxeLevels=3}] #jkbw:pickaxe/3{jkbw: ["clean"]}
clear @s[scores={jkbw.Player.PickaxeLevels=4}] #jkbw:pickaxe/4{jkbw: ["clean"]}

# 斧头
execute if entity @e[type=text_display,tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.red] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if entity @e[type=text_display,tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.blue] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if score #teams jkbw.mem matches 3.. if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.green] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if score #teams jkbw.mem matches 4.. if entity @e[type=text_display,tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.yellow] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if score #teams jkbw.mem matches 5.. if entity @e[type=text_display,tag=jkbw_spawn_cyan,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.cyan] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if score #teams jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_spawn_white,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.white] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if score #teams jkbw.mem matches 7.. if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.pink] #jkbw:axe/0{jkbw: ["sharp0"]}
execute if score #teams jkbw.mem matches 8.. if entity @e[type=text_display,tag=jkbw_spawn_gray,limit=1,scores={jkbw.Team.Sharpness=1}] run clear @s[team=jkbw.gray] #jkbw:axe/0{jkbw: ["sharp0"]}

execute if entity @e[type=text_display,tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.red] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if entity @e[type=text_display,tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.blue] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if score #teams jkbw.mem matches 3.. if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.green] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if score #teams jkbw.mem matches 4.. if entity @e[type=text_display,tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.yellow] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if score #teams jkbw.mem matches 5.. if entity @e[type=text_display,tag=jkbw_spawn_cyan,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.cyan] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if score #teams jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_spawn_white,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.white] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if score #teams jkbw.mem matches 7.. if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.pink] #jkbw:axe/0{jkbw: ["sharp1"]}
execute if score #teams jkbw.mem matches 8.. if entity @e[type=text_display,tag=jkbw_spawn_gray,limit=1,scores={jkbw.Team.Sharpness=0}] run clear @s[team=jkbw.gray] #jkbw:axe/0{jkbw: ["sharp1"]}

## 给予
# 剪刀
give @s[nbt=!{Inventory: [{tag: {jkbw: ["shears1"]}}]},scores={jkbw.Player.ShearsLevels=1}] shears{CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "shears1"], Unbreakable: True, HideFlags: 28}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["shears2"]}}]},scores={jkbw.Player.ShearsLevels=2}] shears{Enchantments: [{id: "minecraft:efficiency", lvl: 1}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "shears2"], Unbreakable: True, HideFlags: 28}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["shears3"]}}]},scores={jkbw.Player.ShearsLevels=3}] shears{Enchantments: [{id: "minecraft:efficiency", lvl: 2}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "shears3"], Unbreakable: True, HideFlags: 28}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["shears4"]}}]},scores={jkbw.Player.ShearsLevels=4}] shears{Enchantments: [{id: "minecraft:efficiency", lvl: 4}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "shears4"], Unbreakable: True, HideFlags: 28}

# 斧头与镐子
execute unless score #attack_mode jkbw.mem matches 1 run function jkbw:play/team/loop/tool/old
execute if score #attack_mode jkbw.mem matches 1 run function jkbw:play/team/loop/tool/new