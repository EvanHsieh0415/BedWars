# 检测能否买
execute unless score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnDiamonds >= #protect3 jkbw.mem run tag @s add jkbw_buy_success
execute unless score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnExpLevelsReal >= #Eprotect3 jkbw.mem run tag @s add jkbw_buy_success
execute if score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnDiamonds >= #protect31 jkbw.mem run tag @s add jkbw_buy_success
execute if score #solo_mode jkbw.mem matches 1 if score @s jkbw.Player.OwnExpLevelsReal >= #Eprotect31 jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnDiamonds
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #protect3 jkbw.mem
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Eprotect3 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #protect31 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Eprotect31 jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"yellow"}," ",{"text":"3","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.diamond"},"*",{"score":{"name": "#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"yellow"}," ",{"text":"3","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
execute as @s[team=jkbw.red,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_red] jkbw.Team.Protection 3
execute as @s[team=jkbw.blue,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_blue] jkbw.Team.Protection 3
execute as @s[team=jkbw.green,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_green] jkbw.Team.Protection 3
execute as @s[team=jkbw.yellow,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_yellow] jkbw.Team.Protection 3
execute as @s[team=jkbw.cyan,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_cyan] jkbw.Team.Protection 3
execute as @s[team=jkbw.white,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_white] jkbw.Team.Protection 3
execute as @s[team=jkbw.pink,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_pink] jkbw.Team.Protection 3
execute as @s[team=jkbw.gray,tag=jkbw_buy_success] run scoreboard players set @e[type=text_display,tag=jkbw_spawn_gray] jkbw.Team.Protection 3

execute as @s[team=jkbw.red,tag=jkbw_buy_success] run tellraw @a[team=jkbw.red] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.blue,tag=jkbw_buy_success] run tellraw @a[team=jkbw.blue] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.green,tag=jkbw_buy_success] run tellraw @a[team=jkbw.green] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.yellow,tag=jkbw_buy_success] run tellraw @a[team=jkbw.yellow] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.cyan,tag=jkbw_buy_success] run tellraw @a[team=jkbw.cyan] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.white,tag=jkbw_buy_success] run tellraw @a[team=jkbw.white] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.pink,tag=jkbw_buy_success] run tellraw @a[team=jkbw.pink] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]
execute as @s[team=jkbw.gray,tag=jkbw_buy_success] run tellraw @a[team=jkbw.gray] ["",{"selector":"@s"}," ",{"storage":"jk:bw","nbt":"txt.print.buy_ed2","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.team.shop.name.protect","color":"gold"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl","color":"gold"}," ",{"text":"3","color":"gold"}]

playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnDiamonds -= #protect3 jkbw.mem
execute unless score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Eprotect3 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnDiamonds -= #protect31 jkbw.mem
execute if score #solo_mode jkbw.mem matches 1 if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Eprotect31 jkbw.mem