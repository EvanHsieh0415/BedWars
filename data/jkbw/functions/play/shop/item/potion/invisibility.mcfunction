# 检测能否买
execute if score @s jkbw.Player.OwnEmeralds >= #potion_invisibility jkbw.mem run tag @s add jkbw_buy_success
execute if score @s jkbw.Player.OwnExpLevelsReal >= #Epotion_invisibility jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnEmeralds
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
execute if score #res_mode jkbw.mem matches 0 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #potion_invisibility jkbw.mem
execute if score #res_mode jkbw.mem matches 1 as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #Epotion_invisibility jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
execute if score #res_mode jkbw.mem matches 0 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"item.minecraft.potion.effect.invisibility","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"translate":"item.minecraft.emerald"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
execute if score #res_mode jkbw.mem matches 1 run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"item.minecraft.potion.effect.invisibility","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
give @s[tag=jkbw_buy_success] potion{display: {Name: '{"translate":"item.minecraft.potion.effect.invisibility","italic":false}'}, Potion: "water", CustomPotionColor: 16185078, CustomPotionEffects: [{Id: 14, Amplifier: 0, Duration: 600, ShowParticles: false}], CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28}
tellraw @s[tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"translate":"item.minecraft.potion.effect.invisibility","color":"gold"},"!"]
playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
execute if score #res_mode jkbw.mem matches 0 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnEmeralds -= #potion_invisibility jkbw.mem
execute if score #res_mode jkbw.mem matches 1 run scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #Epotion_invisibility jkbw.mem