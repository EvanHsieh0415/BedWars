# 破坏自己队伍的床
execute as @s[team=jkbw.cyan] run function jkbw:load/settings/menu/teams/bed/place/cyan
execute unless score #bed_type jkbw.mem matches 1 run title @s[team=jkbw.cyan] actionbar [{"storage":"jk:bw","nbt":"txt.print.cant_break","color":"red"},{"storage":"jk:bw","nbt":"txt.print.bed"},"!"]
execute if score #bed_type jkbw.mem matches 1 run title @s[team=jkbw.cyan] actionbar [{"storage":"jk:bw","nbt":"txt.print.cant_break","color":"red"},{"translate":"block.minecraft.cake"},"!"]
# 破坏非自己队伍的床
execute as @s[team=!jkbw.cyan] run function jkbw:play/bed/break_right