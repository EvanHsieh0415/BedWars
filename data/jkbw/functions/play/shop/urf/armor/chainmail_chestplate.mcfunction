# 检测能否买
execute if score @s jkbw.Player.OwnExpLevelsReal >= #urfEchainmail_chestplate jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #urfEchainmail_chestplate jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
tellraw @s[tag=!jkbw_buy_success] [{"text":"无法购买 ","color":"red"},{"translate":"item.minecraft.chainmail_chestplate","color":"yellow"}," ，你还需要 ",{"score":{"name": "#shop_temp","objective":"jkbw.mem"},"color":"yellow"}," 点经验！"]
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
give @s[tag=jkbw_buy_success] chainmail_chestplate{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], Enchantments: [{id: "protection", lvl: 3s}], HideFlags: 28}
tellraw @s[tag=jkbw_buy_success] [{"text":"成功购买 ","color":"green"},{"translate":"item.minecraft.chainmail_chestplate","color":"gold"}," ！"]
playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #urfEchainmail_chestplate jkbw.mem