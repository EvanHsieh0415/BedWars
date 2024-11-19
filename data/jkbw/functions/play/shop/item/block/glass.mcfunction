# 检测能否买
execute if score @s jkbw.Player.OwnIrons >= #stained_glass jkbw.mem run tag @s add jkbw_buy_success
execute if score @s jkbw.Player.OwnExpLevelsReal >= #Estained_glass jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnIrons
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #stained_glass jkbw.mem
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Estained_glass jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"block.minecraft.glass","color":"yellow"},{"text":"*4","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.iron_ingot"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"block.minecraft.glass","color":"yellow"},{"text":"*4","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]

# 成功购买
give @s[tag=jkbw_buy_success,team=jkbw.red] red_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.blue] blue_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.green] green_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.yellow] yellow_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.cyan] cyan_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.white] white_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.pink] pink_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
give @s[tag=jkbw_buy_success,team=jkbw.gray] gray_stained_glass{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28} 4
tellraw @s[tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"translate":"block.minecraft.glass","color":"gold"},{"text":"*4","color":"gold"},"!"]

playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
execute if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnIrons -= #stained_glass jkbw.mem
execute if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Estained_glass jkbw.mem