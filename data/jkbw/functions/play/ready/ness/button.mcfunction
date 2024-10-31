kill @e[tag=jkbw_show,distance=..10]

summon text_display ~.5 ~3.25 ~1.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.attack_speed","color":"aqua"}]'
function jkbw:load/settings/menu/text_display
summon item_display ~.5 ~2.5 ~1.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_attack_speed"],item:{id:"iron_sword",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.5f,.5f,.5f],translation:[0f,0f,0f]},CustomNameVisible:true,CustomName:'""'}
summon interaction ~.5 ~2.25 ~1.5 {response:true,Tags:["jkbw","jkbw_show","jkbw_button","jkbw_button_attack_speed"],height:.5f,width:.5f}
function jkbw:play/ready/button/attack_speed/show

summon text_display ~1.5 ~2.25 ~1.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.res_mode","color":"green"}]'
function jkbw:load/settings/menu/text_display
summon item_display ~1.5 ~1.5 ~1.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_res_mode"],item:{id:"iron_ingot",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.5f,.5f,.5f],translation:[0f,0f,0f]},CustomNameVisible:true,CustomName:'""'}
summon interaction ~1.5 ~1.25 ~1.5 {response:true,Tags:["jkbw","jkbw_show","jkbw_button","jkbw_button_res_mode"],height:.5f,width:.5f}
function jkbw:play/ready/button/res_mode/show

summon text_display ~2.5 ~2.25 ~.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.res_speed","color":"green"}]'
function jkbw:load/settings/menu/text_display
summon item_display ~2.5 ~1.5 ~.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_res_rate"],item:{id:"rabbit_foot",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.5f,.5f,.5f],translation:[0f,0f,0f]},CustomNameVisible:true,CustomName:'""'}
summon interaction ~2.5 ~1.25 ~.5 {response:true,Tags:["jkbw","jkbw_show","jkbw_button","jkbw_button_res_rate"],height:.5f,width:.5f}
function jkbw:play/ready/button/res_rate/show

summon text_display ~-.5 ~2.7 ~1.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display","jkbw_display_team_count"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team.max","color":"yellow"},{"score":{"name":"#teams_max","objective":"jkbw.mem"}}]'
function jkbw:load/settings/menu/text_display
summon text_display ~-.5 ~2.25 ~1.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team_count","color":"light_purple"}]'
function jkbw:load/settings/menu/text_display
summon item_display ~-.5 ~1.5 ~1.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_team_count"],item:{id:"bell",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.5f,.5f,.5f],translation:[0f,0f,0f]},CustomNameVisible:true,CustomName:'""'}
summon interaction ~-.5 ~1.25 ~1.5 {response:true,Tags:["jkbw","jkbw_show","jkbw_button","jkbw_button_team_count"],height:.5f,width:.5f}
function jkbw:play/ready/button/team_count/show

summon text_display ~-1.5 ~2.25 ~.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team_dis","color":"light_purple"}]'
function jkbw:load/settings/menu/text_display
summon item_display ~-1.5 ~1.5 ~.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_team_distribute"],item:{id:"leather_chestplate",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.5f,.5f,.5f],translation:[0f,0f,0f]},CustomNameVisible:true,CustomName:'""'}
summon interaction ~-1.5 ~1.25 ~.5 {response:true,Tags:["jkbw","jkbw_show","jkbw_button","jkbw_button_team_distribute"],height:.5f,width:.5f}
function jkbw:play/ready/button/team_distribute/show

summon text_display ~.5 ~2.25 ~.5 {billboard:"center",Tags:["jkbw","jkbw_show","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.bed_type","color":"yellow"}]'
function jkbw:load/settings/menu/text_display
summon item_display ~.5 ~1.5 ~.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_bed_type"],item:{id:"red_bed",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.5f,.5f,.5f],translation:[0f,0f,0f]},CustomNameVisible:true,CustomName:'""'}
summon interaction ~.5 ~1.25 ~.5 {response:true,Tags:["jkbw","jkbw_show","jkbw_button","jkbw_button_bed_type"],height:.5f,width:.5f}
function jkbw:play/ready/button/bed_type/show

summon text_display ~.5 ~1.25 ~-7.5 {billboard:"fixed",Tags:["jkbw","jkbw_show","jkbw_show_how2play","jkbw_new_display"],line_width:200,text:'""'}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.how2play","color":"aqua"},"\\n\\n",{"storage":"jk:bw","nbt":"txt.display.how2play1","color":"gold"},"\\n\\n",{"storage":"jk:bw","nbt":"txt.display.how2play2","color":"yellow"}]'
function jkbw:load/settings/menu/text_display