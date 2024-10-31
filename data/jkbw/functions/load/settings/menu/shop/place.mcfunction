execute as @e[type=text_display,tag=jkbw_chest_shop] at @s unless block ~ ~ ~ ender_chest run kill @s
setblock ~ ~1 ~ tinted_glass
summon text_display ~.5 ~ ~.5 {Tags:["jkbw", "jkbw_chest_shop","jkbw_new_display"],text:'""',billboard:"center",line_width:200}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.item.egg.shop","color":"aqua"}]'
function jkbw:load/settings/menu/text_display
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=135.1..180] run tp @e[type=text_display,tag=jkbw_chest_shop,limit=1,sort=nearest] ~ ~ ~ 180 0
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=-180..-135] run tp @e[type=text_display,tag=jkbw_chest_shop,limit=1,sort=nearest] ~ ~ ~ 180 0
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=-134.9..-45] run tp @e[type=text_display,tag=jkbw_chest_shop,limit=1,sort=nearest] ~ ~ ~ -90 0
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=-44.9..45] run tp @e[type=text_display,tag=jkbw_chest_shop,limit=1,sort=nearest] ~ ~ ~ 0 0
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=45.1..135] run tp @e[type=text_display,tag=jkbw_chest_shop,limit=1,sort=nearest] ~ ~ ~ 90 0
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=135.1..180] run setblock ~ ~ ~ ender_chest[facing=south]
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=-180..-135] run setblock ~ ~ ~ ender_chest[facing=south]
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=-134.9..-45] run setblock ~ ~ ~ ender_chest[facing=west]
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=-44.9..45] run setblock ~ ~ ~ ender_chest[facing=north]
execute if entity @p[gamemode=creative,distance=..6,nbt={SelectedItem: {tag: {jkbw: ["eggs", "shop"]}}},y_rotation=45.1..135] run setblock ~ ~ ~ ender_chest[facing=east]
playsound block.note_block.bell player @a[distance=..6]