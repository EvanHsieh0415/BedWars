# 团队升级——确认队伍
execute as @s[team=jkbw.red] run function jkbw:play/shop/buy/5/red
execute as @s[team=jkbw.blue] run function jkbw:play/shop/buy/5/blue
execute if score #teams jkbw.mem matches 3.. as @s[team=jkbw.green] run function jkbw:play/shop/buy/5/green
execute if score #teams jkbw.mem matches 4.. as @s[team=jkbw.yellow] run function jkbw:play/shop/buy/5/yellow
execute if score #teams jkbw.mem matches 5.. as @s[team=jkbw.cyan] run function jkbw:play/shop/buy/5/cyan
execute if score #teams jkbw.mem matches 6.. as @s[team=jkbw.white] run function jkbw:play/shop/buy/5/white
execute if score #teams jkbw.mem matches 7.. as @s[team=jkbw.pink] run function jkbw:play/shop/buy/5/pink
execute if score #teams jkbw.mem matches 8.. as @s[team=jkbw.gray] run function jkbw:play/shop/buy/5/gray