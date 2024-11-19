tag @s add jkbw_this
execute as @a if score @s jkbw.Team.ID = @e[limit=1,tag=jkbw_this] jkbw.Team.ID run tellraw @s {"storage":"jk:bw","nbt":"txt.print.enderchest.break","color": "red"}
kill @s
summon item ~ ~.6 ~ {Item: {id: "endermite_spawn_egg", Count: 1b, tag: {CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28, display: {Name: '{"translate":"block.minecraft.ender_chest","italic":false,"color":"white"}'}, EntityTag: {id: "marker", Tags: ["jkbw", "jkbw_chest_player", "jkbw_new_entity"]}}}}