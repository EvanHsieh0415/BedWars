# 检测能否买
execute if score @s jkbw.Player.OwnExpLevelsReal >= #urfEwooden_sword jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #urfEwooden_sword jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"item.minecraft.wooden_sword","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
execute unless score #attack_mode jkbw.mem matches 1 run give @s[tag=jkbw_buy_success] wooden_sword{CanDestroy: ["#jkbw:candestroy"], Enchantments: [{id: "knockback", lvl: 1s}], AttributeModifiers: [{Name: "a", AttributeName: "generic.max_health", UUID: [I; 1, 1, 1, 1], Slot: "mainhand", Operation: 0, Amount: 2}], HideFlags: 28}
execute if score #attack_mode jkbw.mem matches 1 run give @s[tag=jkbw_buy_success] wooden_sword{CanDestroy: ["#jkbw:candestroy"], Enchantments: [{id: "knockback", lvl: 1s}], AttributeModifiers: [{Name: "a", AttributeName: "generic.max_health", UUID: [I; 1, 1, 1, 1], Slot: "mainhand", Operation: 0, Amount: 2}], HideFlags: 28}

tellraw @s[tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"translate":"item.minecraft.wooden_sword","color":"gold"},"!"]
playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #urfEwooden_sword jkbw.mem