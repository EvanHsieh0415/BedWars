# 团队升级——检查升级
execute if entity @e[type=text_display,tag=jkbw_spawn_gray,scores={jkbw.Team.Haste=2},limit=1] run tellraw @s [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.haste","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_self"}]
execute if entity @e[type=text_display,tag=jkbw_spawn_gray,scores={jkbw.Team.Haste=2},limit=1] run playsound entity.villager.no player @s
execute if entity @e[type=text_display,tag=jkbw_spawn_gray,scores={jkbw.Team.Haste=1},limit=1] run function jkbw:play/shop/team/update/haste/2
execute if entity @e[type=text_display,tag=jkbw_spawn_gray,scores={jkbw.Team.Haste=0},limit=1] run function jkbw:play/shop/team/update/haste/1