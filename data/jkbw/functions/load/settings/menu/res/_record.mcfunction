# 清空原记录
$data remove storage jk:bw Map.mapsP.$(id).res_g.$(res)

# 存储点位
$execute store result score #res_g_$(res) jkbw.mem if entity @e[type=text_display,tag=jkbw_$(res)_time]
scoreboard players reset #res_g jkbw.mem
$execute as @e[type=text_display,tag=jkbw_$(res)_time,sort=random] at @s run function jkbw:load/settings/menu/res/_order
function jkbw:load/settings/menu/res/_recording1 with storage jk:bw Map.cur

# 区块重设 
forceload remove all
forceload add 10110223 10110223
function jkbw:load/settings/menu/res/_forceload_
