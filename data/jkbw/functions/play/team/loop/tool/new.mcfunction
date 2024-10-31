# 1.9+版
execute as @s[team=jkbw.red] run function jkbw:play/team/loop/tool/new_ {team:red}
execute as @s[team=jkbw.blue] run function jkbw:play/team/loop/tool/new_ {team:blue}
execute if score #teams jkbw.mem matches 3.. as @s[team=jkbw.green] run function jkbw:play/team/loop/tool/new_ {team:green}
execute if score #teams jkbw.mem matches 4.. as @s[team=jkbw.yellow] run function jkbw:play/team/loop/tool/new_ {team:yellow}
execute if score #teams jkbw.mem matches 5.. as @s[team=jkbw.cyan] run function jkbw:play/team/loop/tool/new_ {team:cyan}
execute if score #teams jkbw.mem matches 6.. as @s[team=jkbw.white] run function jkbw:play/team/loop/tool/new_ {team:white}
execute if score #teams jkbw.mem matches 7.. as @s[team=jkbw.pink] run function jkbw:play/team/loop/tool/new_ {team:pink}
execute if score #teams jkbw.mem matches 8.. as @s[team=jkbw.gray] run function jkbw:play/team/loop/tool/new_ {team:gray}

give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "1"]}}]},scores={jkbw.Player.PickaxeLevels=1}] wooden_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 1}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "1"], Unbreakable: True, HideFlags: 28}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "2"]}}]},scores={jkbw.Player.PickaxeLevels=2}] iron_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 2}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "2"], Unbreakable: True, HideFlags: 28}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "3"]}}]},scores={jkbw.Player.PickaxeLevels=3}] golden_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 3}, {id: "minecraft:sharpness", lvl: 2}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "3"], Unbreakable: True, HideFlags: 28}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "4"]}}]},scores={jkbw.Player.PickaxeLevels=4}] diamond_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 3}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "4"], Unbreakable: True, HideFlags: 28}