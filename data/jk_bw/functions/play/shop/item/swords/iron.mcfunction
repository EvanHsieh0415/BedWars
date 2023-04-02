# 检测能否买
tag @s[scores={jk_bw_PlayerOwnGolds=7..}] add jk_bw_buy_success
tag @s[scores={jk_bw_PlayerOwnExpLevelsReal=35..}] add jk_bw_buy_success

# 失败购买
execute unless score #exp_mode jk_bw_mem matches 1 as @s[tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem = @s jk_bw_PlayerOwnGolds
execute if score #exp_mode jk_bw_mem matches 1 as @s[tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem = @s jk_bw_PlayerOwnExpLevelsReal
execute unless score #exp_mode jk_bw_mem matches 1 as @s[tag=!jk_bw_buy_success] run scoreboard players remove #shop_temp jk_bw_mem 7
execute if score #exp_mode jk_bw_mem matches 1 as @s[tag=!jk_bw_buy_success] run scoreboard players remove #shop_temp jk_bw_mem 35
execute as @s[tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem *= #-1 jk_bw_mem
execute unless score #exp_mode jk_bw_mem matches 1 run tellraw @s[tag=!jk_bw_buy_success] [{"text":"无法购买","color":"red"},{"text":" 铁剑","color":"yellow","bold":true},"，你还需要 ",{"score":{"name": "#shop_temp","objective":"jk_bw_mem"},"color":"yellow"}," 块金锭！"]
execute if score #exp_mode jk_bw_mem matches 1 run tellraw @s[tag=!jk_bw_buy_success] [{"text":"无法购买","color":"red"},{"text":" 铁剑","color":"yellow","bold":true},"，你还需要 ",{"score":{"name": "#shop_temp","objective":"jk_bw_mem"},"color":"yellow"}," 点经验！"]
playsound entity.villager.no player @s[tag=!jk_bw_buy_success]

# 成功购买
clear @s[tag=jk_bw_buy_success] wooden_sword
execute unless score #attack_mode jk_bw_mem matches 1 run give @s[tag=jk_bw_buy_success] iron_sword{Unbreakable:1b,CanDestroy:["#jk_bw:candestroy"],jk_bw_sword:2,HideFlags:28,AttributeModifiers:[{Operation:0,Amount:7.6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_speed",Name:"a",Slot:"mainhand"},{Operation:0,Amount:6,UUID:[I;1,0,0,1],AttributeName:"generic.attack_damage",Name:"a",Slot:"mainhand"}]}
execute if score #attack_mode jk_bw_mem matches 1 run give @s[tag=jk_bw_buy_success] iron_sword{Unbreakable:1b,CanDestroy:["#jk_bw:candestroy"],jk_bw_sword:2,HideFlags:28}
tellraw @s[tag=jk_bw_buy_success] [{"text":"成功购买","color":"green"},{"text":" 铁剑","color":"gold","bold":true},"！"]
playsound entity.experience_orb.pickup player @s[tag=jk_bw_buy_success]
execute unless score #exp_mode jk_bw_mem matches 1 run clear @s[tag=jk_bw_buy_success] gold_ingot 7
execute if score #exp_mode jk_bw_mem matches 1 run scoreboard players remove @s[tag=jk_bw_buy_success] jk_bw_PlayerOwnExpLevelsReal 35