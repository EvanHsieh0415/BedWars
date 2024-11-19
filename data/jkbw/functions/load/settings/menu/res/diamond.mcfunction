kill @e[tag=jkbw_diamond,distance=..8]
execute align xyz run summon item_display ~.5 ~3.5 ~.5 {item:{id:"diamond_block",Count:1},Tags:["jkbw","jkbw_res_global","jkbw_diamond"],transformation:{scale:[0.6f,0.6f,0.6f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
execute align xyz run summon text_display ~.5 ~4 ~.5 {Tags:["jkbw","jkbw_res_global","jkbw_diamond","jkbw_diamond_level","jkbw_new_display"],text:'""',billboard:"center",line_width:200}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"translate":"item.minecraft.diamond","color":"aqua"},{"storage":"jk:bw","nbt":"txt.display.spawn_point"}]'
function jkbw:load/settings/menu/text_display
execute align xyz run summon text_display ~.5 ~2.5 ~.5 {Tags:["jkbw","jkbw_res_global","jkbw_point","jkbw_diamond","jkbw_diamond_time","jkbw_new_display"],text:'""',billboard:"center",line_width:200}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"translate":"item.minecraft.diamond","color":"aqua"},{"storage":"jk:bw","nbt":"txt.display.spawn_time"}]'
function jkbw:load/settings/menu/text_display
setblock ~ ~-1 ~ diamond_block
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 diamond_block