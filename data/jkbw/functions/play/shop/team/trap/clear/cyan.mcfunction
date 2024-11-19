# 购买成功，清理资源
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_bought,tag=jkbw_buy_success] if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Team.TrapNum=0},limit=1] run scoreboard players operation @s jkbw.Player.OwnDiamonds -= #trap1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_bought,tag=jkbw_buy_success] if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Team.TrapNum=1},limit=1] run scoreboard players operation @s jkbw.Player.OwnDiamonds -= #trap2 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_bought,tag=jkbw_buy_success] if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Team.TrapNum=2},limit=1] run scoreboard players operation @s jkbw.Player.OwnDiamonds -= #trap3 jkbw.mem

execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_bought,tag=jkbw_buy_success] if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Team.TrapNum=0},limit=1] run scoreboard players operation @s jkbw.Player.OwnExpLevelsReal -= #Etrap1 jkbw.mem
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_bought,tag=jkbw_buy_success] if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Team.TrapNum=1},limit=1] run scoreboard players operation @s jkbw.Player.OwnExpLevelsReal -= #Etrap2 jkbw.mem
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_bought,tag=jkbw_buy_success] if entity @e[type=text_display,tag=jkbw_bed_cyan,scores={jkbw.Team.TrapNum=2},limit=1] run scoreboard players operation @s jkbw.Player.OwnExpLevelsReal -= #Etrap3 jkbw.mem

execute as @s[tag=!jkbw_bought,tag=jkbw_buy_success] run scoreboard players add @e[type=text_display,tag=jkbw_bed_cyan,limit=1] jkbw.Team.TrapNum 1