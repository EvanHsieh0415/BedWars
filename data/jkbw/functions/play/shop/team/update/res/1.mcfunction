# 检测能否买
execute unless score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnDiamonds >= #res1 jkbw.mem run tag @s add jkbw_buy_success
execute unless score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnExpLevelsReal >= #Eres1 jkbw.mem run tag @s add jkbw_buy_success
execute if score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnDiamonds >= #res11 jkbw.mem run tag @s add jkbw_buy_success
execute if score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnExpLevelsReal >= #Eres11 jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnDiamonds
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #res1 jkbw.mem
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Eres1 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #res11 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Eres11 jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"yellow"}," ",{"text":"1","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.diamond"},"*",{"score":{"name": "#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"yellow"}," ",{"text":"1","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
execute as @s[team=jkbw.red,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_red] jkbw.Team.Res 1
execute as @s[team=jkbw.blue,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_blue] jkbw.Team.Res 1
execute as @s[team=jkbw.green,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_green] jkbw.Team.Res 1
execute as @s[team=jkbw.yellow,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_yellow] jkbw.Team.Res 1
execute as @s[team=jkbw.cyan,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_cyan] jkbw.Team.Res 1
execute as @s[team=jkbw.white,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_white] jkbw.Team.Res 1
execute as @s[team=jkbw.pink,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_pink] jkbw.Team.Res 1
execute as @s[team=jkbw.gray,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_res_gray] jkbw.Team.Res 1

execute as @s[team=jkbw.red,tag=jkbw_buy_success] run tellraw @a[team=jkbw.red] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.blue,tag=jkbw_buy_success] run tellraw @a[team=jkbw.blue] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.green,tag=jkbw_buy_success] run tellraw @a[team=jkbw.green] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.yellow,tag=jkbw_buy_success] run tellraw @a[team=jkbw.yellow] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.cyan,tag=jkbw_buy_success] run tellraw @a[team=jkbw.cyan] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.white,tag=jkbw_buy_success] run tellraw @a[team=jkbw.white] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.pink,tag=jkbw_buy_success] run tellraw @a[team=jkbw.pink] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]
execute as @s[team=jkbw.gray,tag=jkbw_buy_success] run tellraw @a[team=jkbw.gray] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.res","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"1","color":"gold"}]

playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnDiamonds -= #res1 jkbw.mem
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Eres1 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnDiamonds -= #res11 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Eres11 jkbw.mem