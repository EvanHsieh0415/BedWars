scoreboard players set #time_state jkbw.mem 5
scoreboard players operation #time_show jkbw.mem = #time_fight jkbw.mem
execute store result bossbar jkbw:game_progress max run scoreboard players get #time_fight jkbw.mem
scoreboard players set @e[type=text_display,tag=jkbw_bed_display,scores={jkbw.Bed.State=0}] jkbw.Bed.State 1
execute as @e[type=text_display,tag=jkbw_bed_display] at @s run setblock ~ ~ ~ air
tellraw @a {"storage":"jk:bw","nbt":"txt.print.bed_destruct2","color":"red"}
playsound entity.ender_dragon.growl player @a 0 100 0 1000000