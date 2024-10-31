# 30% 概率产生掉落物
execute as @e[type=marker,tag=jkbw_explode] store result score @s jkbw.mem run random value 0..9
execute as @e[type=marker,tag=jkbw_explode,scores={jkbw.mem=7..}] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=jkbw_explode,scores={jkbw.mem=..6}] at @s run setblock ~ ~ ~ air
#particle end_rod
kill @e[type=marker,tag=jkbw_explode]