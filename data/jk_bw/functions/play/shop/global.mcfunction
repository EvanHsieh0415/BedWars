# 每 2 ticks 执行一次
## 检测玩家购买移到function jk_bw:play/tick2_player

# 重置玩家购买失败分数
scoreboard players reset #shop_temp jk_bw_mem

# 商店
function jk_bw:play/shop/item/shop
execute as @e[type=chest_minecart,tag=jk_bw_shop_team] at @s run function jk_bw:play/shop/team/shop

# 陷阱
function jk_bw:play/shop/team/trap/trigger/global