playsound block.note_block.bell player @a[distance=..6]
setblock ~ ~-1 ~ tinted_glass
# 全局点放在了ness/button里

# 边界与加载区块
setworldspawn
execute align xyz run worldborder center ~.5 ~.5
worldborder set 221
forceload remove all
forceload add 10110223 10110223
forceload add ~-110 ~-110 ~110 ~110

# 记录点位
# 高度Y
execute store result score #WY jkbw.mem run data get entity @s Pos[1]
scoreboard players operation #WYmax_ jkbw.mem = #WY jkbw.mem
scoreboard players add #WYmax_ jkbw.mem 100

# 边界XZ
execute store result score #WX jkbw.mem run data get entity @s Pos[0]
execute store result score #WZ jkbw.mem run data get entity @s Pos[2]
scoreboard players operation #WXmax jkbw.mem = #WX jkbw.mem
scoreboard players operation #WXmin jkbw.mem = #WX jkbw.mem
scoreboard players operation #WZmax jkbw.mem = #WZ jkbw.mem
scoreboard players operation #WZmin jkbw.mem = #WZ jkbw.mem
scoreboard players add #WXmax jkbw.mem 110
scoreboard players remove #WXmin jkbw.mem 110
scoreboard players add #WZmax jkbw.mem 110
scoreboard players remove #WZmin jkbw.mem 110

# 其他
scoreboard players set #tutorial jkbw.mem 2
execute align xyz positioned ~ ~ ~4 run function jkbw:play/ready/ness/button
function jkbw:load/settings/menu
gamemode creative @s