# 边界
$worldborder set $(d)
$execute at @e[type=text_display,tag=jkbw_worldspawn,sort=nearest,limit=1] run fill ~-$(r) ~ ~-$(r) ~$(r) ~ ~$(r) barrier replace air

# 强加载
forceload remove all
forceload add 10110223 10110223

function jkbw:load/settings/menu/res/_forceload_

$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.red.spawn
$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.blue.spawn
$execute if score #teams jkbw.mem matches 3.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.green.spawn
$execute if score #teams jkbw.mem matches 4.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.yellow.spawn
$execute if score #teams jkbw.mem matches 5.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.aqua.spawn
$execute if score #teams jkbw.mem matches 6.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.white.spawn
$execute if score #teams jkbw.mem matches 7.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.pink.spawn
$execute if score #teams jkbw.mem matches 8.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.gray.spawn

$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.red.bed
$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.blue.bed
$execute if score #teams jkbw.mem matches 3.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.green.bed
$execute if score #teams jkbw.mem matches 4.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.yellow.bed
$execute if score #teams jkbw.mem matches 5.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.aqua.bed
$execute if score #teams jkbw.mem matches 6.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.white.bed
$execute if score #teams jkbw.mem matches 7.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.pink.bed
$execute if score #teams jkbw.mem matches 8.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.gray.bed

$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.red.res
$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.blue.res
$execute if score #teams jkbw.mem matches 3.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.green.res
$execute if score #teams jkbw.mem matches 4.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.yellow.res
$execute if score #teams jkbw.mem matches 5.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.aqua.res
$execute if score #teams jkbw.mem matches 6.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.white.res
$execute if score #teams jkbw.mem matches 7.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.pink.res
$execute if score #teams jkbw.mem matches 8.. run function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.mapsP.$(id).team.gray.res
