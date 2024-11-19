# 破坏自己队伍的床
execute as @s[team=jkbw.white] run function jkbw:load/settings/menu/teams/bed/place/white
execute unless score #bed_type jkbw.mem matches 1 run title @s[team=jkbw.white] actionbar [{"storage":"jk:bw","nbt":"txt.print.cant_break","color":"red"},{"storage":"jk:bw","nbt":"txt.print.bed"},"!"]
execute if score #bed_type jkbw.mem matches 1 run title @s[team=jkbw.white] actionbar [{"storage":"jk:bw","nbt":"txt.print.cant_break","color":"red"},{"translate":"block.minecraft.cake"},"!"]
# 破坏非自己队伍的床
execute as @s[team=!jkbw.white] run function jkbw:play/bed/break_right