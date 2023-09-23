# 1.8版（enchant无法覆盖attribute，所以只是形式附魔）
execute if entity @e[tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.red,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","0"]}}}] hotbar.0 with wooden_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],jkbw:["clean"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:5.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.red,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","1"]}}}] hotbar.0 with stone_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:6.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.red,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","2"]}}}] hotbar.0 with iron_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:7.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_red,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.red,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","3"]}}}] hotbar.0 with diamond_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:8.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}

execute if entity @e[tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.blue,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","0"]}}}] hotbar.0 with wooden_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],jkbw:["clean"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:5.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.blue,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","1"]}}}] hotbar.0 with stone_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:6.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.blue,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","2"]}}}] hotbar.0 with iron_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:7.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_blue,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.blue,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","3"]}}}] hotbar.0 with diamond_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:8.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}

execute if entity @e[tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.green,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","0"]}}}] hotbar.0 with wooden_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],jkbw:["clean"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:5.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.green,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","1"]}}}] hotbar.0 with stone_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:6.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.green,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","2"]}}}] hotbar.0 with iron_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:7.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.green,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","3"]}}}] hotbar.0 with diamond_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:8.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}

execute if entity @e[tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.yellow,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","0"]}}}] hotbar.0 with wooden_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],jkbw:["clean"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:5.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.yellow,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","1"]}}}] hotbar.0 with stone_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:6.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.yellow,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","2"]}}}] hotbar.0 with iron_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:7.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}
execute if entity @e[tag=jkbw_spawn_yellow,limit=1,scores={jkbw.Team.Sharpness=1}] run item replace entity @s[team=jkbw.yellow,nbt={SelectedItemSlot:0,SelectedItem:{tag:{jkbw:["sword","3"]}}}] hotbar.0 with diamond_sword{Unbreakable:1,CanDestroy:["#jkbw:candestroy"],HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:8.25,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}],Enchantments:[{id:"minecraft:sharpness",lvl:1}]}