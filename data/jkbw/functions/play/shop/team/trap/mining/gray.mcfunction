# 检测能否买
function jkbw:play/shop/team/trap/check/gray

# 失败购买
tellraw @s[tag=jkbw_bought] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.mining","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_team1"}]

execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_bought,tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.mining","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.diamond"},"*",{"score":{"name": "#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_bought,tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.mining","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]

# 成功购买
execute as @s[team=jkbw.gray,tag=!jkbw_bought,tag=jkbw_buy_success] run tellraw @a[team=jkbw.gray] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.mining","color":"gold"}]

execute as @s[team=jkbw.gray,tag=!jkbw_bought,tag=jkbw_buy_success] run tag @e[type=text_display,tag=jkbw_bed_gray,scores={jkbw.Team.TrapNum=0},limit=1] add jkbw_trap_mining_1
execute as @s[team=jkbw.gray,tag=!jkbw_bought,tag=jkbw_buy_success] run tag @e[type=text_display,tag=jkbw_bed_gray,scores={jkbw.Team.TrapNum=1},limit=1] add jkbw_trap_mining_2
execute as @s[team=jkbw.gray,tag=!jkbw_bought,tag=jkbw_buy_success] run tag @e[type=text_display,tag=jkbw_bed_gray,scores={jkbw.Team.TrapNum=2},limit=1] add jkbw_trap_mining_3

function jkbw:play/shop/team/trap/clear/gray