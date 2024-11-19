# 标记
summon marker 10110222 1 10110222 {CustomName:'"□"',Tags:["jkbw","jkbw_check","jkbw_check_bed_gray"]}
summon marker 10110222 1 10110222 {CustomName:'"□"',Tags:["jkbw","jkbw_check","jkbw_check_spawn_gray"]}
summon marker 10110222 1 10110222 {CustomName:'"□"',Tags:["jkbw","jkbw_check","jkbw_check_chest_gray"]}

# 检测床安放
execute store result score #team_point jkbw.mem if entity @e[type=text_display,tag=jkbw_bed_gray]
execute if score #team_point jkbw.mem matches 2.. run data modify entity @e[type=marker,tag=jkbw_check_bed_gray,limit=1] CustomName set value '{"text":"=","color":"gray"}'
execute if score #team_point jkbw.mem matches 1 run data modify entity @e[type=marker,tag=jkbw_check_bed_gray,limit=1] CustomName set value '{"text":"■","color":"gray"}'
execute if score #team_point jkbw.mem matches 0 run data modify entity @e[type=marker,tag=jkbw_check_bed_gray,limit=1] CustomName set value '{"text":"□","color":"gray"}'

# 检测出生点
execute store result score #team_point jkbw.mem if entity @e[type=text_display,tag=jkbw_spawn_gray]
execute if score #team_point jkbw.mem matches 2.. run data modify entity @e[type=marker,tag=jkbw_check_spawn_gray,limit=1] CustomName set value '{"text":"=","color":"gray"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_spawn_gray,limit=1] if block ~ ~ ~ air run data modify entity @e[type=marker,tag=jkbw_check_spawn_gray,limit=1] CustomName set value '{"text":"■","color":"gray"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_spawn_gray,limit=1] unless block ~ ~ ~ air run data modify entity @e[type=marker,tag=jkbw_check_spawn_gray,limit=1] CustomName set value '{"text":"-","color":"gray"}'
execute if score #team_point jkbw.mem matches 0 run data modify entity @e[type=marker,tag=jkbw_check_spawn_gray,limit=1] CustomName set value '{"text":"□","color":"gray"}'

# 检测团队箱子
execute store result score #team_point jkbw.mem if entity @e[type=text_display,tag=jkbw_chest_gray]
execute if score #team_point jkbw.mem matches 2.. run data modify entity @e[type=marker,tag=jkbw_check_chest_gray,limit=1] CustomName set value '{"text":"=","color":"gray"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_chest_gray,limit=1] if block ~ ~ ~ barrel run data modify entity @e[type=marker,tag=jkbw_check_chest_gray,limit=1] CustomName set value '{"text":"■","color":"gray"}'
execute if score #team_point jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_chest_gray,limit=1] unless block ~ ~ ~ barrel run data modify entity @e[type=marker,tag=jkbw_check_chest_gray,limit=1] CustomName set value '{"text":"-","color":"gray"}'
execute if score #team_point jkbw.mem matches 0 run data modify entity @e[type=marker,tag=jkbw_check_chest_gray,limit=1] CustomName set value '{"text":"□","color":"gray"}'
