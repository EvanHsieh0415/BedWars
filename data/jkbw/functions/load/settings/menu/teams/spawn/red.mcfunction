kill @e[type=text_display,tag=jkbw_spawn_red]
execute align xyz run summon text_display ~.5 ~.5 ~.5 {Tags:["jkbw","jkbw_point","jkbw_spawn_red","jkbw_spawn_display","jkbw_new_display"],text:'""',billboard:"center",line_width:200}
data modify block 10110222 1 10110222 back_text.messages[0] set value '[{"storage":"jk:bw","nbt":"txt.display.team.red","color":"red"},{"storage":"jk:bw","nbt":"txt.display.spawn_point1"}]'
function jkbw:load/settings/menu/text_display
tp @e[type=text_display,tag=jkbw_spawn_display,limit=1,sort=nearest] ~ ~ ~ facing entity @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:red_wool"}], SelectedItem: {tag: {jkbw: ["eggs", "spawn"]}}}]