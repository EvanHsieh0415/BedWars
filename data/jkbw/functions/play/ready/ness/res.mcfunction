function jkbw:load/settings/menu/res/hole
execute if entity @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:diamond_block"}], SelectedItem: {tag: {jkbw: ["eggs", "res_global"]}}}] run function jkbw:load/settings/menu/res/diamond
execute if entity @p[gamemode=creative,distance=..6,nbt={Inventory: [{Slot: -106b, id: "minecraft:emerald_block"}], SelectedItem: {tag: {jkbw: ["eggs", "res_global"]}}}] run function jkbw:load/settings/menu/res/emerald
function jkbw:load/settings/menu/teams/check