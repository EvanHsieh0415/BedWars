# 多余人数禁止选
execute if score #teams jkbw.mem matches 2 run function jkbw:play/ready/button/team_distribute/sub/2
execute if score #teams jkbw.mem matches 3 run function jkbw:play/ready/button/team_distribute/sub/3
execute if score #teams jkbw.mem matches 4 run function jkbw:play/ready/button/team_distribute/sub/4
execute if score #teams jkbw.mem matches 5 run function jkbw:play/ready/button/team_distribute/sub/5
execute if score #teams jkbw.mem matches 6 run function jkbw:play/ready/button/team_distribute/sub/6
execute if score #teams jkbw.mem matches 7 run function jkbw:play/ready/button/team_distribute/sub/7
execute if score #teams jkbw.mem matches 8 run function jkbw:play/ready/button/team_distribute/sub/8

# 确认队伍
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["red"]}}]}] jkbw.Player.TeamSelect 1
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["blue"]}}]}] jkbw.Player.TeamSelect 2
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["green"]}}]}] jkbw.Player.TeamSelect 3
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["yellow"]}}]}] jkbw.Player.TeamSelect 4
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["cyan"]}}]}] jkbw.Player.TeamSelect 5
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["white"]}}]}] jkbw.Player.TeamSelect 6
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["pink"]}}]}] jkbw.Player.TeamSelect 7
scoreboard players set @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["gray"]}}]}] jkbw.Player.TeamSelect 8

team leave @s[scores={jkbw.Player.TeamSelect=0}]
team join jkbw.red @s[scores={jkbw.Player.TeamSelect=1}]
team join jkbw.blue @s[scores={jkbw.Player.TeamSelect=2}]
team join jkbw.green @s[scores={jkbw.Player.TeamSelect=3}]
team join jkbw.yellow @s[scores={jkbw.Player.TeamSelect=4}]
team join jkbw.cyan @s[scores={jkbw.Player.TeamSelect=5}]
team join jkbw.white @s[scores={jkbw.Player.TeamSelect=6}]
team join jkbw.pink @s[scores={jkbw.Player.TeamSelect=7}]
team join jkbw.gray @s[scores={jkbw.Player.TeamSelect=8}]

# 更新背包
execute unless score #teams jkbw.mem matches 3.. run item replace entity @s hotbar.2 with air
execute unless score #teams jkbw.mem matches 4.. run item replace entity @s hotbar.3 with air
execute unless score #teams jkbw.mem matches 5.. run item replace entity @s hotbar.4 with air
execute unless score #teams jkbw.mem matches 6.. run item replace entity @s hotbar.5 with air
execute unless score #teams jkbw.mem matches 7.. run item replace entity @s hotbar.6 with air
execute unless score #teams jkbw.mem matches 8.. run item replace entity @s hotbar.7 with air

execute unless score @s jkbw.Player.TeamSelect matches 1 run item replace entity @s hotbar.0 from block 10110209 5 10110222 container.9
execute unless score @s jkbw.Player.TeamSelect matches 2 run item replace entity @s hotbar.1 from block 10110209 5 10110222 container.10
execute if score #teams jkbw.mem matches 3.. unless score @s jkbw.Player.TeamSelect matches 3 run item replace entity @s hotbar.2 from block 10110209 5 10110222 container.11
execute if score #teams jkbw.mem matches 4.. unless score @s jkbw.Player.TeamSelect matches 4 run item replace entity @s hotbar.3 from block 10110209 5 10110222 container.12
execute if score #teams jkbw.mem matches 5.. unless score @s jkbw.Player.TeamSelect matches 5 run item replace entity @s hotbar.4 from block 10110209 5 10110222 container.13
execute if score #teams jkbw.mem matches 6.. unless score @s jkbw.Player.TeamSelect matches 6 run item replace entity @s hotbar.5 from block 10110209 5 10110222 container.14
execute if score #teams jkbw.mem matches 7.. unless score @s jkbw.Player.TeamSelect matches 7 run item replace entity @s hotbar.6 from block 10110209 5 10110222 container.15
execute if score #teams jkbw.mem matches 8.. unless score @s jkbw.Player.TeamSelect matches 8 run item replace entity @s hotbar.7 from block 10110209 5 10110222 container.16

item replace entity @s[scores={jkbw.Player.TeamSelect=1}] hotbar.0 from block 10110209 5 10110222 container.18
item replace entity @s[scores={jkbw.Player.TeamSelect=2}] hotbar.1 from block 10110209 5 10110222 container.19
execute if score #teams jkbw.mem matches 3.. run item replace entity @s[scores={jkbw.Player.TeamSelect=3}] hotbar.2 from block 10110209 5 10110222 container.20
execute if score #teams jkbw.mem matches 4.. run item replace entity @s[scores={jkbw.Player.TeamSelect=4}] hotbar.3 from block 10110209 5 10110222 container.21
execute if score #teams jkbw.mem matches 5.. run item replace entity @s[scores={jkbw.Player.TeamSelect=5}] hotbar.4 from block 10110209 5 10110222 container.22
execute if score #teams jkbw.mem matches 6.. run item replace entity @s[scores={jkbw.Player.TeamSelect=6}] hotbar.5 from block 10110209 5 10110222 container.23
execute if score #teams jkbw.mem matches 7.. run item replace entity @s[scores={jkbw.Player.TeamSelect=7}] hotbar.6 from block 10110209 5 10110222 container.24
execute if score #teams jkbw.mem matches 8.. run item replace entity @s[scores={jkbw.Player.TeamSelect=8}] hotbar.7 from block 10110209 5 10110222 container.25

item replace entity @s[scores={jkbw.Player.TeamSelect=1}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 11546150, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
item replace entity @s[scores={jkbw.Player.TeamSelect=2}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 3949738, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
execute if score #teams jkbw.mem matches 3.. run item replace entity @s[scores={jkbw.Player.TeamSelect=3}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 6192150, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
execute if score #teams jkbw.mem matches 4.. run item replace entity @s[scores={jkbw.Player.TeamSelect=4}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 16701501, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
execute if score #teams jkbw.mem matches 5.. run item replace entity @s[scores={jkbw.Player.TeamSelect=5}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 1481884, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
execute if score #teams jkbw.mem matches 6.. run item replace entity @s[scores={jkbw.Player.TeamSelect=6}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 16383998, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
execute if score #teams jkbw.mem matches 7.. run item replace entity @s[scores={jkbw.Player.TeamSelect=7}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 15961002, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}
execute if score #teams jkbw.mem matches 8.. run item replace entity @s[scores={jkbw.Player.TeamSelect=8}] armor.chest with leather_chestplate{HideFlags: 1023, display: {color: 4673362, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}]}

item replace entity @s[scores={jkbw.Player.TeamSelect=1,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 11546150, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
item replace entity @s[scores={jkbw.Player.TeamSelect=2,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 3949738, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
execute if score #teams jkbw.mem matches 3.. run item replace entity @s[scores={jkbw.Player.TeamSelect=3,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 6192150, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
execute if score #teams jkbw.mem matches 4.. run item replace entity @s[scores={jkbw.Player.TeamSelect=4,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 16701501, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
execute if score #teams jkbw.mem matches 5.. run item replace entity @s[scores={jkbw.Player.TeamSelect=5,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 1481884, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
execute if score #teams jkbw.mem matches 6.. run item replace entity @s[scores={jkbw.Player.TeamSelect=6,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 16383998, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
execute if score #teams jkbw.mem matches 7.. run item replace entity @s[scores={jkbw.Player.TeamSelect=7,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 15961002, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}
execute if score #teams jkbw.mem matches 8.. run item replace entity @s[scores={jkbw.Player.TeamSelect=8,jkbw.Player.State=1}] armor.head with leather_helmet{HideFlags: 1023, display: {color: 4673362, Name:'""'}, AttributeModifiers:[], Enchantments: [{id: "infinity", lvl: 1s}, {id: "binding_curse", lvl: 1s}]}