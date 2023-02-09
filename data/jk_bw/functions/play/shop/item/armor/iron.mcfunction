# 检测能否买
tag @s[scores={jk_bw_PlayerArmorLevels=2..}] add jk_bw_player_has_armor
tag @s[tag=!jk_bw_player_has_armor,scores={jk_bw_PlayerOwnGolds=12..}] add jk_bw_buy_success

# 失败购买（不够物资）
execute as @s[tag=!jk_bw_player_has_armor,tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem = @s jk_bw_PlayerOwnGolds
execute as @s[tag=!jk_bw_player_has_armor,tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem -= #12 jk_bw_mem
execute as @s[tag=!jk_bw_player_has_armor,tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem *= #-1 jk_bw_mem
tellraw @s[tag=!jk_bw_player_has_armor,tag=!jk_bw_buy_success] [{"text":"无法购买","color":"red"},{"text":" 铁套装","color":"yellow","bold":true},"，你还需要 ",{"score":{"name": "#shop_temp","objective":"jk_bw_mem"},"color":"yellow"}," 块金锭！"]
playsound entity.villager.no player @s[tag=!jk_bw_player_has_armor,tag=!jk_bw_buy_success]

# 失败购买（已拥有）
tellraw @s[tag=jk_bw_player_has_armor] [{"text":"已经购买过","color":"red"},{"text":" 铁套装 ","color":"yellow","bold":true},"或有更高级的装备了！"]
playsound entity.villager.no player @s[tag=jk_bw_player_has_armor]

# 成功购买
tellraw @s[tag=jk_bw_buy_success] [{"text":"成功购买","color":"green"},{"text":" 铁套装","color":"gold","bold":true},"！"]
playsound entity.experience_orb.pickup player @s[tag=jk_bw_buy_success]
scoreboard players set @s[tag=jk_bw_buy_success] jk_bw_PlayerArmorLevels 2
clear @s[tag=jk_bw_buy_success] gold_ingot 12
tag @s remove jk_bw_player_has_armor