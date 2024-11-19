playsound entity.ender_dragon.growl player @a ~ ~ ~ 1000000
scoreboard players add @s jkbw.Player.CountBeds 1

execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakRed=1}] run function jkbw:play/bed/break_right/red
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakBlue=1}] run function jkbw:play/bed/break_right/blue
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakGreen=1}] run function jkbw:play/bed/break_right/green
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakYellow=1}] run function jkbw:play/bed/break_right/yellow
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakCyan=1}] run function jkbw:play/bed/break_right/cyan
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakWhite=1}] run function jkbw:play/bed/break_right/white
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakPink=1}] run function jkbw:play/bed/break_right/pink
execute unless score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.BreakGray=1}] run function jkbw:play/bed/break_right/gray

execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Red=1}] run function jkbw:play/bed/break_right/red
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Blue=1}] run function jkbw:play/bed/break_right/blue
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Green=1}] run function jkbw:play/bed/break_right/green
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Yellow=1}] run function jkbw:play/bed/break_right/yellow
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Cyan=1}] run function jkbw:play/bed/break_right/cyan
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_White=1}] run function jkbw:play/bed/break_right/white
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Pink=1}] run function jkbw:play/bed/break_right/pink
execute if score #bed_type jkbw.mem matches 1 as @s[scores={jkbw.Player.Break_Gray=1}] run function jkbw:play/bed/break_right/gray