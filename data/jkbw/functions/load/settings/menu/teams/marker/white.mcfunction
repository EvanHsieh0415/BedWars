# 标记
summon marker 10110222 1 10110222 {CustomName:'"□"',Tags:["jkbw","jkbw_check","jkbw_check_bed_white"]}
summon marker 10110222 1 10110222 {CustomName:'"□"',Tags:["jkbw","jkbw_check","jkbw_check_spawn_white"]}
summon marker 10110222 1 10110222 {CustomName:'"□"',Tags:["jkbw","jkbw_check","jkbw_check_chest_white"]}

# 检测床安放
execute store result score #team_point jkbw.mem if entity @e[type=text_display,tag=jkbw_bed_white]
execute if score #team_point jkbw.mem matches 2.. run data modify entity @e[type=marker,tag=jkbw_check_bed_white,limit=1] CustomName set value '{"text":"=","color":"white"}'
execute if score #team_point jkbw.mem matches 1 run data modify entity @e[type=marker,tag=jkbw_check_bed_white,limit=1] CustomName set value '{"text":"■","color":"white"}'
execute if score #team_point jkbw.mem matches 0 run data modify entity @e[type=marker,tag=jkbw_check_bed_white,limit=1] CustomName set value '{"text":"□","color":"white"}'

# 检测出生点
execute store result score #team_point jkbw.mem if entity @e[type=text_display,tag=jkbw_spawn_white]
execute if score #team_point jkbw.mem matches 2.. run data modify entity @e[type=marker,tag=jkbw_check_spawn_white,limit=1] CustomName set value '{"text":"=","color":"white"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_spawn_white,limit=1] if block ~ ~ ~ air run data modify entity @e[type=marker,tag=jkbw_check_spawn_white,limit=1] CustomName set value '{"text":"■","color":"white"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_spawn_white,limit=1] unless block ~ ~ ~ air run data modify entity @e[type=marker,tag=jkbw_check_spawn_white,limit=1] CustomName set value '{"text":"-","color":"white"}'
execute if score #team_point jkbw.mem matches 0 run data modify entity @e[type=marker,tag=jkbw_check_spawn_white,limit=1] CustomName set value '{"text":"□","color":"white"}'

# 检测团队箱子
execute store result score #team_point jkbw.mem if entity @e[type=text_display,tag=jkbw_chest_white]
execute if score #team_point jkbw.mem matches 2.. run data modify entity @e[type=marker,tag=jkbw_check_chest_white,limit=1] CustomName set value '{"text":"=","color":"white"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_chest_white,limit=1] if block ~ ~ ~ barrel run data modify entity @e[type=marker,tag=jkbw_check_chest_white,limit=1] CustomName set value '{"text":"■","color":"white"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_chest_white,limit=1] unless block ~ ~ ~ barrel run data modify entity @e[type=marker,tag=jkbw_check_chest_white,limit=1] CustomName set value '{"text":"-","color":"white"}'
execute if score #team_point jkbw.mem matches 0 run data modify entity @e[type=marker,tag=jkbw_check_chest_white,limit=1] CustomName set value '{"text":"□","color":"white"}'
