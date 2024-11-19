kill @e[type=text_display,tag=jkbw_chest_green]
execute align xyz run summon text_display ~.5 ~ ~.5 {Tags:["jkbw","jkbw_chest_green","jkbw_chest_display","jkbw_new_display"],text:'""',billboard:"center",line_width:200}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team.green","color":"green"},{"storage":"jk:bw","nbt":"txt.display.chest_point"}]'
function jkbw:load/settings/menu/text_display
setblock ~ ~ ~ barrel[facing=up]{Lock:"green",CustomName:'"green"'}