execute if score #res_mode jkbw.mem matches 0 run data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.res_mode1","color":"gold"},": ",{"storage":"jk:bw","nbt":"txt.display.res_mode1_1","color":"gold"}]'
execute if score #res_mode jkbw.mem matches 1 run data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.res_mode2","color":"gold"},": ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}]'
execute if score #res_mode jkbw.mem matches 2 run data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.res_mode2","color":"gold"},": ",{"storage":"jk:bw","nbt":"txt.display.res_mode2_1","color":"gold"}]'
execute as @e[type=item_display,tag=jkbw_show_res_mode] run data modify entity @s CustomName set from block 10110222 1 10110222 back_text.messages[0]

execute if score #res_mode jkbw.mem matches 0 as @e[type=item_display,tag=jkbw_show_res_mode] run data modify entity @s item.id set value "iron_ingot"
execute if score #res_mode jkbw.mem matches 1 as @e[type=item_display,tag=jkbw_show_res_mode] run data modify entity @s item.id set value "experience_bottle"
execute if score #res_mode jkbw.mem matches 2 as @e[type=item_display,tag=jkbw_show_res_mode] run data modify entity @s item.id set value "wither_skeleton_skull"
