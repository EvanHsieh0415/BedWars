execute as @e[type=marker,tag=jkbw_tower_block] run function jkbw:play/special/check_pos
# 梯子朝向
execute as @s[tag=jkbw_north] as @e[type=marker,tag=jkbw_tower_ladder,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ ladder[facing=south] replace air
execute as @s[tag=jkbw_south] as @e[type=marker,tag=jkbw_tower_ladder,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ ladder[facing=north] replace air
execute as @s[tag=jkbw_east] as @e[type=marker,tag=jkbw_tower_ladder,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ ladder[facing=west] replace air
execute as @s[tag=jkbw_west] as @e[type=marker,tag=jkbw_tower_ladder,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ ladder[facing=east] replace air
# 羊毛颜色
execute as @s[tag=jkbw_tower_red] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ red_wool replace air
execute as @s[tag=jkbw_tower_blue] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ blue_wool replace air
execute as @s[tag=jkbw_tower_green] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ green_wool replace air
execute as @s[tag=jkbw_tower_yellow] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ yellow_wool replace air
execute as @s[tag=jkbw_tower_cyan] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ cyan_wool replace air
execute as @s[tag=jkbw_tower_white] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ white_wool replace air
execute as @s[tag=jkbw_tower_pink] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ pink_wool replace air
execute as @s[tag=jkbw_tower_gray] as @e[type=marker,tag=jkbw_tower_wool,distance=..10] at @s run fill ~ ~ ~ ~ ~ ~ gray_wool replace air

playsound entity.chicken.egg player @a[distance=..8]
# 清理
kill @e[type=marker,tag=jkbw_tower_block,distance=..10]