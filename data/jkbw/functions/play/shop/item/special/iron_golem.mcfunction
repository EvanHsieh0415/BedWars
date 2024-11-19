# 检测能否买
execute if score @s jkbw.Player.OwnIrons >= #iron_golem jkbw.mem run tag @s add jkbw_buy_success
execute if score @s jkbw.Player.OwnExpLevelsReal >= #Eiron_golem jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnIrons
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #iron_golem jkbw.mem
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Eiron_golem jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.iron_golem.name","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.iron_ingot"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.iron_golem.name","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
give @s[tag=jkbw_buy_success,team=jkbw.red] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.red"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.blue] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.blue"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.green] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.green"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.yellow] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.yellow"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.cyan] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.cyan"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.white] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.white"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.pink] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.pink"}, HideFlags: 28}
give @s[tag=jkbw_buy_success,team=jkbw.gray] iron_golem_spawn_egg{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:iron_golem", Tags: ["jkbw", "jkbw_new_entity", "jkbw_iron_golem"], CustomNameVisible: true, Health: 20.0f, Team: "jkbw.gray"}, HideFlags: 28}
tellraw @s[tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.iron_golem.name","color":"gold"},"!"]
playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
execute if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnIrons -= #iron_golem jkbw.mem
execute if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Eiron_golem jkbw.mem