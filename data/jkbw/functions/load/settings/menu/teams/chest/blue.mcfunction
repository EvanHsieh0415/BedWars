kill @e[tag=jkbw_chest_blue]
execute align xyz run summon text_display ~.5 ~ ~.5 {Tags:["jkbw","jkbw_chest_blue","jkbw_chest_marker"],text:'[{"text":"蓝队箱子位","color":"blue"}]',billboard:"center",line_width:200,transformation:{scale:[1f,1f,1f]}}
setblock ~ ~ ~ barrel[facing=up]{Lock:"蓝队指南针",CustomName:'"蓝队箱子"'}
function jkbw:load/settings/menu/teams/check