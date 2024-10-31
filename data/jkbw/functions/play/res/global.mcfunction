# temp指资源点范围内的方块
# 资源生成上限（铁48，金16，钻8，绿4）

# 对每个资源点
execute as @e[type=text_display,tag=jkbw_iron_time] at @s run function jkbw:play/res/extra/iron
execute as @e[type=text_display,tag=jkbw_gold_time] at @s run function jkbw:play/res/extra/gold
execute as @e[type=text_display,tag=jkbw_diamond_time] at @s run function jkbw:play/res/extra/common {Res:Diamond,res:diamond,count:8}
execute as @e[type=text_display,tag=jkbw_emerald_time] at @s run function jkbw:play/res/extra/common {Res:Emerald,res:emerald,count:4}

# 全局
function jkbw:play/res/common {res:diamond}
function jkbw:play/res/common {res:emerald}

data modify block 10110222 1 10110222 front_text.messages set value ['[{"storage":"jk:bw","nbt":"txt.display.res_spawn1","color":"aqua"}," ",{"score":{"name":"#time_diamond","objective":"jkbw.mem"},"color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.display.res_spawn2"}]','[{"storage":"jk:bw","nbt":"txt.display.res_spawn1","color":"green"}," ",{"score":{"name":"#time_emerald","objective":"jkbw.mem"},"color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.display.res_spawn2"}]','[{"translate":"item.minecraft.diamond","color":"aqua"},{"storage":"jk:bw","nbt":"txt.display.spawn_point"}," ",{"score":{"name":"#level_diamond","objective":"jkbw.mem"},"color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"}]','[{"translate":"item.minecraft.emerald","color":"green"},{"storage":"jk:bw","nbt":"txt.display.spawn_point"}," ",{"score":{"name":"#level_emerald","objective":"jkbw.mem"},"color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"}]']
execute as @e[type=text_display,tag=jkbw_diamond_time] run data modify entity @s text set from block 10110222 1 10110222 front_text.messages[0]
execute as @e[type=text_display,tag=jkbw_emerald_time,tag=!jkbw_gold_time] run data modify entity @s text set from block 10110222 1 10110222 front_text.messages[1]
execute as @e[type=text_display,tag=jkbw_diamond_level] run data modify entity @s text set from block 10110222 1 10110222 front_text.messages[2]
execute as @e[type=text_display,tag=jkbw_emerald_level] run data modify entity @s text set from block 10110222 1 10110222 front_text.messages[3]
