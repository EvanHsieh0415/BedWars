kill @e[tag=jk_bw_chest_green]
summon armor_stand ~ ~ ~ {Tags:["jk_bw","jk_bw_chest_green","jk_bw_chest_marker"],Marker:true,CustomName:'[{"text":"绿队箱子位","color":"green"}]',CustomNameVisible:true,Small:true,Invisible:true}
setblock ~ ~ ~ barrel[facing=up]{Lock:"绿队指南针",CustomName:'"绿队箱子"'}
function jk_bw:load/settings/menu/teams/check