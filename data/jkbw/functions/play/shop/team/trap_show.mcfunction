# 末影箱内显示购买的陷阱
execute as @s[team=jkbw.red] run function jkbw:play/shop/team/trap_show/red
execute as @s[team=jkbw.blue] run function jkbw:play/shop/team/trap_show/blue
execute if score #teams jkbw.mem matches 3.. as @s[team=jkbw.green] run function jkbw:play/shop/team/trap_show/green
execute if score #teams jkbw.mem matches 4.. as @s[team=jkbw.yellow] run function jkbw:play/shop/team/trap_show/yellow
execute if score #teams jkbw.mem matches 5.. as @s[team=jkbw.cyan] run function jkbw:play/shop/team/trap_show/cyan
execute if score #teams jkbw.mem matches 6.. as @s[team=jkbw.white] run function jkbw:play/shop/team/trap_show/white
execute if score #teams jkbw.mem matches 7.. as @s[team=jkbw.pink] run function jkbw:play/shop/team/trap_show/pink
execute if score #teams jkbw.mem matches 8.. as @s[team=jkbw.gray] run function jkbw:play/shop/team/trap_show/gray
