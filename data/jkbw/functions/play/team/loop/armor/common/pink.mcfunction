# 保护0~4
execute if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Protection=0}] run function jkbw:play/team/loop/armor/0/pink
execute if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Protection=1}] run function jkbw:play/team/loop/armor/1/pink
execute if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Protection=2}] run function jkbw:play/team/loop/armor/2/pink
execute if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Protection=3}] run function jkbw:play/team/loop/armor/3/pink
execute if entity @e[type=text_display,tag=jkbw_spawn_pink,limit=1,scores={jkbw.Team.Protection=4}] run function jkbw:play/team/loop/armor/4/pink