# 有无剑/非木剑
execute store success score @s jk_bw_PlayerHasSword run clear @s #jk_bw:sword/any 0
execute store success score @s jk_bw_PlayerHasSwordNotWood run clear @s #jk_bw:sword/not_wood 0

# 有非木剑时清理木剑，无剑时给予木剑
clear @s[scores={jk_bw_PlayerHasSwordNotWood=1}] wooden_sword
execute unless score #attack_mode jk_bw_mem matches 1 run give @s[scores={jk_bw_PlayerHasSword=0,jk_bw_PlayerHasSwordNotWood=0}] wooden_sword{Unbreakable:1,CanDestroy:["#jk_bw:candestroy"],jk_bw_clean:1,jk_bw_sword:0,HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:4,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}]}
execute if score #attack_mode jk_bw_mem matches 1 run give @s[scores={jk_bw_PlayerHasSword=0,jk_bw_PlayerHasSwordNotWood=0}] wooden_sword{Unbreakable:1,CanDestroy:["#jk_bw:candestroy"],jk_bw_clean:1,jk_bw_sword:0,HideFlags:28}

# 锋利剑的清理
execute if entity @e[tag=jk_bw_spawn_red,limit=1,scores={jk_bw_TeamSharpness=0}] run clear @s[team=jk_bw_red] #jk_bw:sword/any{Enchantments:[{id:"minecraft:sharpness"}]}
execute if entity @e[tag=jk_bw_spawn_blue,limit=1,scores={jk_bw_TeamSharpness=0}] run clear @s[team=jk_bw_blue] #jk_bw:sword/any{Enchantments:[{id:"minecraft:sharpness"}]}
execute if entity @e[tag=jk_bw_spawn_green,limit=1,scores={jk_bw_TeamSharpness=0}] run clear @s[team=jk_bw_green] #jk_bw:sword/any{Enchantments:[{id:"minecraft:sharpness"}]}
execute if entity @e[tag=jk_bw_spawn_yellow,limit=1,scores={jk_bw_TeamSharpness=0}] run clear @s[team=jk_bw_yellow] #jk_bw:sword/any{Enchantments:[{id:"minecraft:sharpness"}]}

# 锋利剑的获取
execute unless score #attack_mode jk_bw_mem matches 1 run function jk_bw:play/team/loop/sword/old
execute if score #attack_mode jk_bw_mem matches 1 run function jk_bw:play/team/loop/sword/new

# 指南针
execute store success score @s jk_bw_PlayerHasCompass run clear @s compass 0
give @s[scores={jk_bw_PlayerHasCompass=0},team=jk_bw_red] compass{display:{Name:'"红队指南针"',Lore:['{"text":"开启自家队伍箱的钥匙，","color":"gray","italic":false}','{"text":"被团灭队伍不需要钥匙解锁。","color":"gray","italic":false}']},CanDestroy:["#jk_bw:candestroy"],HideFlags:28,jk_bw_clean:1}
give @s[scores={jk_bw_PlayerHasCompass=0},team=jk_bw_blue] compass{display:{Name:'"蓝队指南针"',Lore:['{"text":"开启自家队伍箱的钥匙，","color":"gray","italic":false}','{"text":"被团灭队伍不需要钥匙解锁。","color":"gray","italic":false}']},CanDestroy:["#jk_bw:candestroy"],HideFlags:28,jk_bw_clean:1}
give @s[scores={jk_bw_PlayerHasCompass=0},team=jk_bw_green] compass{display:{Name:'"绿队指南针"',Lore:['{"text":"开启自家队伍箱的钥匙，","color":"gray","italic":false}','{"text":"被团灭队伍不需要钥匙解锁。","color":"gray","italic":false}']},CanDestroy:["#jk_bw:candestroy"],HideFlags:28,jk_bw_clean:1}
give @s[scores={jk_bw_PlayerHasCompass=0},team=jk_bw_yellow] compass{display:{Name:'"黄队指南针"',Lore:['{"text":"开启自家队伍箱的钥匙，","color":"gray","italic":false}','{"text":"被团灭队伍不需要钥匙解锁。","color":"gray","italic":false}']},CanDestroy:["#jk_bw:candestroy"],HideFlags:28,jk_bw_clean:1}