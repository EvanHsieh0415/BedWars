data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"color":"gold","score":{"name":"#teams","objective":"jkbw.mem"}}]'
execute as @e[type=item_display,tag=jkbw_show_team_count] run data modify entity @s CustomName set from block 10110222 1 10110222 back_text.messages[0]

#tag @e[type=text_display,tag=jkbw_display_team_count] add jkbw_new_display
#data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team.max","color":"yellow"},{"score":{"name":"#teams_max","objective":"jkbw.mem"}}]'
#function jkbw:load/settings/menu/text_display