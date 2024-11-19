# 1.8-版
execute as @s[team=jkbw.red] run function jkbw:play/team/loop/tool/old/red
execute as @s[team=jkbw.blue] run function jkbw:play/team/loop/tool/old/blue
execute if score #teams jkbw.mem matches 3.. as @s[team=jkbw.green] run function jkbw:play/team/loop/tool/old/green
execute if score #teams jkbw.mem matches 4.. as @s[team=jkbw.yellow] run function jkbw:play/team/loop/tool/old/yellow
execute if score #teams jkbw.mem matches 5.. as @s[team=jkbw.cyan] run function jkbw:play/team/loop/tool/old/cyan
execute if score #teams jkbw.mem matches 6.. as @s[team=jkbw.white] run function jkbw:play/team/loop/tool/old/white
execute if score #teams jkbw.mem matches 7.. as @s[team=jkbw.pink] run function jkbw:play/team/loop/tool/old/pink
execute if score #teams jkbw.mem matches 8.. as @s[team=jkbw.gray] run function jkbw:play/team/loop/tool/old/gray

give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "1"]}}]},scores={jkbw.Player.PickaxeLevels=1}] wooden_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 1}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "1"], Unbreakable: True, HideFlags: 28, AttributeModifiers: [{Operation: 0, Amount: 2, UUID: [I; 1, 0, 0, 1], AttributeName: "generic.attack_damage", Name: "a", Slot: "mainhand"}]}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "2"]}}]},scores={jkbw.Player.PickaxeLevels=2}] iron_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 2}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "2"], Unbreakable: True, HideFlags: 28, AttributeModifiers: [{Operation: 0, Amount: 3, UUID: [I; 1, 0, 0, 1], AttributeName: "generic.attack_damage", Name: "a", Slot: "mainhand"}]}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "3"]}}]},scores={jkbw.Player.PickaxeLevels=3}] golden_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 3}, {id: "minecraft:sharpness", lvl: 2}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "3"], Unbreakable: True, HideFlags: 28, AttributeModifiers: [{Operation: 0, Amount: 4, UUID: [I; 1, 0, 0, 1], AttributeName: "generic.attack_damage", Name: "a", Slot: "mainhand"}]}
give @s[nbt=!{Inventory: [{tag: {jkbw: ["pickaxe", "4"]}}]},scores={jkbw.Player.PickaxeLevels=4}] diamond_pickaxe{Enchantments: [{id: "minecraft:efficiency", lvl: 3}], CanDestroy: ["#jkbw:candestroy"], jkbw: ["clean", "pickaxe", "4"], Unbreakable: True, HideFlags: 28, AttributeModifiers: [{Operation: 0, Amount: 5, UUID: [I; 1, 0, 0, 1], AttributeName: "generic.attack_damage", Name: "a", Slot: "mainhand"}]}