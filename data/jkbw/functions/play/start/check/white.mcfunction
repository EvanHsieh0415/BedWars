# 床点
execute at @e[type=text_display,tag=jkbw_bed_white,limit=1] if block ~ ~ ~ white_bed run scoreboard players add @e[type=marker,tag=jkbw_start_check,limit=1] jkbw.mem 1
execute at @e[type=text_display,tag=jkbw_bed_white,limit=1] if block ~ ~ ~ white_candle_cake run scoreboard players add @e[type=marker,tag=jkbw_start_check,limit=1] jkbw.mem 1

# 出生点
execute at @e[type=text_display,tag=jkbw_spawn_white,limit=1] if block ~ ~ ~ air run scoreboard players add @e[type=marker,tag=jkbw_start_check,limit=1] jkbw.mem 1

# 箱子点
execute at @e[type=text_display,tag=jkbw_chest_white,limit=1] if block ~ ~ ~ barrel run scoreboard players add @e[type=marker,tag=jkbw_start_check,limit=1] jkbw.mem 1

# 自选队伍存在玩家
execute if score #team_mode jkbw.mem matches 1 if entity @p[team=jkbw.white] run scoreboard players add @e[type=marker,tag=jkbw_start_check,limit=1] jkbw.mem 1
