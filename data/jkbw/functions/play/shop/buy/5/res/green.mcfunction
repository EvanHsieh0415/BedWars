# 团队升级——检查升级
execute if entity @e[type=text_display,tag=jkbw_res_green,scores={jkbw.Team.Res=4},limit=1] run tellraw @s [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_self"}]
execute if entity @e[type=text_display,tag=jkbw_res_green,scores={jkbw.Team.Res=4},limit=1] run playsound entity.villager.no player @s
execute if entity @e[type=text_display,tag=jkbw_res_green,scores={jkbw.Team.Res=3},limit=1] run function jkbw:play/shop/team/update/res/4
execute if entity @e[type=text_display,tag=jkbw_res_green,scores={jkbw.Team.Res=2},limit=1] run function jkbw:play/shop/team/update/res/3
execute if entity @e[type=text_display,tag=jkbw_res_green,scores={jkbw.Team.Res=1},limit=1] run function jkbw:play/shop/team/update/res/2
execute if entity @e[type=text_display,tag=jkbw_res_green,scores={jkbw.Team.Res=0},limit=1] run function jkbw:play/shop/team/update/res/1