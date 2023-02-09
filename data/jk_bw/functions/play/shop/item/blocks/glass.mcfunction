# 检测能否买
tag @s[scores={jk_bw_PlayerOwnIrons=12..}] add jk_bw_buy_success

# 失败购买
execute as @s[tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem = @s jk_bw_PlayerOwnIrons
execute as @s[tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem -= #12 jk_bw_mem
execute as @s[tag=!jk_bw_buy_success] run scoreboard players operation #shop_temp jk_bw_mem *= #-1 jk_bw_mem
tellraw @s[tag=!jk_bw_buy_success] [{"text":"无法购买","color":"red"},{"text":" 防爆玻璃 ","color":"yellow","bold":true},"*8，你还需要 ",{"score":{"name": "#shop_temp","objective":"jk_bw_mem"},"color":"yellow"}," 块铁锭！"]
playsound entity.villager.no player @s[tag=!jk_bw_buy_success]

# 成功购买
give @s[team=jk_bw_red,tag=jk_bw_buy_success] red_stained_glass{CanPlaceOn:["#jk_bw:canplaceon"],CanDestroy:["#jk_bw:candestroy"],HideFlags:28} 8
give @s[team=jk_bw_blue,tag=jk_bw_buy_success] blue_stained_glass{CanPlaceOn:["#jk_bw:canplaceon"],CanDestroy:["#jk_bw:candestroy"],HideFlags:28} 8
give @s[team=jk_bw_green,tag=jk_bw_buy_success] green_stained_glass{CanPlaceOn:["#jk_bw:canplaceon"],CanDestroy:["#jk_bw:candestroy"],HideFlags:28} 8
give @s[team=jk_bw_yellow,tag=jk_bw_buy_success] yellow_stained_glass{CanPlaceOn:["#jk_bw:canplaceon"],CanDestroy:["#jk_bw:candestroy"],HideFlags:28} 8
tellraw @s[tag=jk_bw_buy_success] [{"text":"成功购买","color":"green"},{"text":" 防爆玻璃 ","color":"gold","bold":true},"*8！"]
playsound entity.experience_orb.pickup player @s[tag=jk_bw_buy_success]
clear @s[tag=jk_bw_buy_success] iron_ingot 12
# *原价12铁4个玻璃，但是由于爆炸设计的缺陷所以便宜了