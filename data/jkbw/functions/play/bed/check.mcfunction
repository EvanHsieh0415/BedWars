# 床检测被破坏
execute as @e[type=text_display,tag=jkbw_bed_display,scores={jkbw.Bed.State=1}] at @s unless block ~ ~ ~ #jkbw:bed run scoreboard players set @s jkbw.Bed.State 2

# 直接带入队伍
function jkbw:play/bed/check/red
function jkbw:play/bed/check/blue
execute if score #teams jkbw.mem matches 3.. run function jkbw:play/bed/check/green
execute if score #teams jkbw.mem matches 4.. run function jkbw:play/bed/check/yellow
execute if score #teams jkbw.mem matches 5.. run function jkbw:play/bed/check/cyan
execute if score #teams jkbw.mem matches 6.. run function jkbw:play/bed/check/white
execute if score #teams jkbw.mem matches 7.. run function jkbw:play/bed/check/pink
execute if score #teams jkbw.mem matches 8.. run function jkbw:play/bed/check/gray

# 避免反复加入队伍
scoreboard players set @e[type=text_display,tag=jkbw_bed_display,scores={jkbw.Bed.State=2}] jkbw.Bed.State 3
scoreboard players set @e[type=text_display,tag=jkbw_bed_display,scores={jkbw.Team.Alive=0,jkbw.Bed.State=3}] jkbw.Bed.State 4