kill @e[type=text_display,tag=jkbw_bed_green]
execute align xyz run summon text_display ~.5 ~.5 ~.5 {Tags:["jkbw","jkbw_bed_green","jkbw_bed_display","jkbw_new_display"],text:'""',billboard:"center",line_width:200}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team.green","color":"green"},{"storage":"jk:bw","nbt":"txt.display.bed_point"}]'
function jkbw:load/settings/menu/text_display
execute as @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:green_wool"}], SelectedItem: {tag: {jkbw: ["eggs", "bed"]}}},y_rotation=135.1..180] run tp @e[type=text_display,tag=jkbw_bed_green,limit=1,sort=nearest] ~ ~ ~ 180 0
execute as @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:green_wool"}], SelectedItem: {tag: {jkbw: ["eggs", "bed"]}}},y_rotation=-180..-135] run tp @e[type=text_display,tag=jkbw_bed_green,limit=1,sort=nearest] ~ ~ ~ 180 0
execute as @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:green_wool"}], SelectedItem: {tag: {jkbw: ["eggs", "bed"]}}},y_rotation=-134.9..-45] run tp @e[type=text_display,tag=jkbw_bed_green,limit=1,sort=nearest] ~ ~ ~ -90 0
execute as @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:green_wool"}], SelectedItem: {tag: {jkbw: ["eggs", "bed"]}}},y_rotation=-44.9..45] run tp @e[type=text_display,tag=jkbw_bed_green,limit=1,sort=nearest] ~ ~ ~ 0 0
execute as @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:green_wool"}], SelectedItem: {tag: {jkbw: ["eggs", "bed"]}}},y_rotation=45.1..135] run tp @e[type=text_display,tag=jkbw_bed_green,limit=1,sort=nearest] ~ ~ ~ 90 0
function jkbw:load/settings/menu/teams/bed/place/green