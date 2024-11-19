# 团队升级——检查升级
execute if entity @e[type=text_display,tag=jkbw_spawn_cyan,scores={jkbw.Team.Protection=4},limit=1] run tellraw @s [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_self"}]
execute if entity @e[type=text_display,tag=jkbw_spawn_cyan,scores={jkbw.Team.Protection=4},limit=1] run playsound entity.villager.no player @s
execute if entity @e[type=text_display,tag=jkbw_spawn_cyan,scores={jkbw.Team.Protection=3},limit=1] run function jkbw:play/shop/team/update/protect/4
execute if entity @e[type=text_display,tag=jkbw_spawn_cyan,scores={jkbw.Team.Protection=2},limit=1] run function jkbw:play/shop/team/update/protect/3
execute if entity @e[type=text_display,tag=jkbw_spawn_cyan,scores={jkbw.Team.Protection=1},limit=1] run function jkbw:play/shop/team/update/protect/2
execute if entity @e[type=text_display,tag=jkbw_spawn_cyan,scores={jkbw.Team.Protection=0},limit=1] run function jkbw:play/shop/team/update/protect/1