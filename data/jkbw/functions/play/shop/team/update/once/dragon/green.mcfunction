# 检测能否买
execute if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Dragon=1}] run tag @s add jkbw_bought
execute if score #time_state jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Dragon=0}] run tag @s add jkbw_bought

execute unless score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnDiamonds >= #dragon jkbw.mem run tag @s[tag=!jkbw_bought] add jkbw_buy_success
execute unless score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnExpLevelsReal >= #Edragon jkbw.mem run tag @s[tag=!jkbw_bought] add jkbw_buy_success
execute if score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnDiamonds >= #dragon1 jkbw.mem run tag @s[tag=!jkbw_bought] add jkbw_buy_success
execute if score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnExpLevelsReal >= #Edragon1 jkbw.mem run tag @s[tag=!jkbw_bought] add jkbw_buy_success

# 失败购买
execute if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Dragon=1}] run tellraw @s[tag=jkbw_bought] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.dragon","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_team2"}]
execute if score #time_state jkbw.mem matches 6.. if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Dragon=0}] run tellraw @s[tag=jkbw_bought] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.dragon","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_over_time"}]
playsound entity.villager.no player @s[tag=jkbw_bought]

execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnDiamonds
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #dragon jkbw.mem
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Edragon jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #dragon1 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Edragon1 jkbw.mem
execute as @s[tag=!jkbw_bought,tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_bought,tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.dragon","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.diamond"},"*",{"score":{"name": "#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_bought,tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.dragon","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_bought,tag=!jkbw_buy_success]

# 成功购买
execute as @s[tag=!jkbw_bought,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_green,limit=1] jkbw.Team.Dragon 1
execute as @s[tag=!jkbw_bought,tag=jkbw_buy_success] run tellraw @a[team=jkbw.green] [{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.dragon","color":"gold"}]

playsound entity.experience_orb.pickup player @s[tag=!jkbw_bought,tag=jkbw_buy_success]
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnDiamonds -= #dragon jkbw.mem
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Edragon jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnDiamonds -= #dragon1 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Edragon1 jkbw.mem