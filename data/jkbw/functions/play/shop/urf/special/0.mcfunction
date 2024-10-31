# 检测能否买
$execute if score @s jkbw.Player.OwnExpLevelsReal >= #urfE$(name) jkbw.mem run tag @s add jkbw_buy_success

# 失败购买
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem = @s jkbw.Player.OwnExpLevelsReal
$execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem -= #urfE$(name) jkbw.mem
execute as @s[tag=!jkbw_buy_success] run scoreboard players operation #shop_temp jkbw.mem *= #-1 jkbw.mem
$execute if score #1 jkbw.mem matches $(id) run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"block.minecraft.tnt","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]
$execute if score #2 jkbw.mem matches $(id) run tellraw @s[tag=!jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"translate":"item.minecraft.fire_charge","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.you_need"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.lvl"},"*",{"score":{"name":"#shop_temp","objective":"jkbw.mem"},"color":"yellow"},"!"]

playsound entity.villager.no player @s[tag=!jkbw_buy_success]

# 成功购买
$execute if score #1 jkbw.mem matches $(id) run give @s[tag=jkbw_buy_success] mooshroom_spawn_egg{display:{Name: '{"translate":"block.minecraft.tnt","color":"white","italic":false}'},CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], EntityTag: {id: "minecraft:tnt", Tags: ["jkbw", "jkbw_tnt", "jkbw_new_entity"], Fuse: 10000s}, jkbw: ["tnt"], HideFlags: 28}
$execute if score #1 jkbw.mem matches $(id) run tellraw @s[tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"translate":"block.minecraft.tnt","color":"gold"},"!"]
$execute if score #2 jkbw.mem matches $(id) run give @s[tag=jkbw_buy_success] fire_charge{CanDestroy: ["#jkbw:candestroy"], HideFlags: 28, jkbw: ["offhand_use"]}
$execute if score #2 jkbw.mem matches $(id) run tellraw @s[tag=jkbw_buy_success] [{"storage":"jk:bw","nbt":"txt.print.buy_ok","color":"green"}," ",{"translate":"item.minecraft.fire_charge","color":"gold"},"!"]

playsound entity.experience_orb.pickup player @s[tag=jkbw_buy_success]
$scoreboard players operation @s[tag=jkbw_buy_success] jkbw.Player.OwnExpLevelsReal -= #urfE$(name) jkbw.mem