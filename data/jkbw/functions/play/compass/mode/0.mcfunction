# 曼哈顿距离
execute as @s[team=jkbw.red] run function jkbw:play/compass/mode/0/red
execute as @s[team=jkbw.blue] run function jkbw:play/compass/mode/0/blue
execute if score #teams jkbw.mem matches 3.. as @s[team=jkbw.green] run function jkbw:play/compass/mode/0/green
execute if score #teams jkbw.mem matches 4.. as @s[team=jkbw.yellow] run function jkbw:play/compass/mode/0/yellow
execute if score #teams jkbw.mem matches 5.. as @s[team=jkbw.cyan] run function jkbw:play/compass/mode/0/cyan
execute if score #teams jkbw.mem matches 6.. as @s[team=jkbw.white] run function jkbw:play/compass/mode/0/white
execute if score #teams jkbw.mem matches 7.. as @s[team=jkbw.pink] run function jkbw:play/compass/mode/0/pink
execute if score #teams jkbw.mem matches 8.. as @s[team=jkbw.gray] run function jkbw:play/compass/mode/0/gray
