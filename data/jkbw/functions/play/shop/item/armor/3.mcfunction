# 检测能否买
tag @s[scores={jkbw.Player.ArmorLevels=3..}] add jkbw_bought
execute if score @s jkbw.Player.OwnEmeralds >= #armor3 jkbw.mem run tag @s[tag=!jkbw_bought] add jkbw_buy_success
execute if score @s jkbw.Player.OwnExpLevelsReal >= #Earmor3 jkbw.mem run tag @s[tag=!jkbw_bought] add jkbw_buy_success

# 失败购买（不够物资）
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_bought,tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnEmeralds
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_bought,tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_bought,tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #armor3 jkbw.mem
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_bought,tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Earmor3 jkbw.mem
execute as @s[tag=!jkbw_bought,tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_bought,tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.armor3","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.emerald"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_bought,tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.armor3","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_bought,tag=!jkbw_buy_success]

# 失败购买（已拥有）
tellraw @s[tag=jkbw_bought] [{"storage":"jk:bw","nbt":"txt.print.buy_ed","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.armor3","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.buy_ed1"}]
playsound entity.villager.no player @s[tag=jkbw_bought]

# 成功购买
scoreboard players set @s[tag=!jkbw_bought,tag=jkbw_buy_success] jkbw.Player.ArmorLevels 3
tellraw @s[tag=!jkbw_bought,tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.armor3","color":"gold"},"!"]
playsound entity.experience_orb.pickup player @s[tag=!jkbw_bought,tag=jkbw_buy_success]
execute if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=!jkbw_bought,tag=jkbw_buy_success] jkbw.Player.OwnEmeralds -= #armor3 jkbw.mem
execute if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=!jkbw_bought,tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Earmor3 jkbw.mem