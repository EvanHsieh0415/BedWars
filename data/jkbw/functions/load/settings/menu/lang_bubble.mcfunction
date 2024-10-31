summon marker ~ ~ ~ {Tags:["jkbw","jkbw_lang","jkbw_lang1"],CustomName:'{"text":"[中文]","color":"white"}'}
summon marker ~ ~ ~ {Tags:["jkbw","jkbw_lang","jkbw_lang2"],CustomName:'{"text":"[English]","color":"white"}'}
execute if score #lang jkbw.mem matches 1 run data modify entity @e[type=marker,tag=jkbw_lang1,limit=1] CustomName set value '{"text":"[中文]","color":"green"}'
execute if score #lang jkbw.mem matches 2 run data modify entity @e[type=marker,tag=jkbw_lang2,limit=1] CustomName set value '{"text":"[English]","color":"green"}'