playsound entity.experience_orb.pickup player @s
execute as @e[tag=jkbw] run data modify entity @s view_range set value 1f
kill @e[type=marker,tag=jkbw_map_clean]
kill @e[type=marker,tag=jkbw_map_convert]
$summon marker ~.5 ~.5 ~.5 {Tags:["jkbw","jkbw_map_$(type)"]}
$tp @e[type=marker,tag=jkbw_map_$(type),limit=1] @e[type=text_display,tag=jkbw_worldspawn,limit=1]
$scoreboard players set @e[type=marker,tag=jkbw_map_$(type),limit=1] jkbw.mem 400
$bossbar set jkbw:map name {"storage":"jk:bw","nbt":"txt.display.map.$(type)","color":"yellow","bold":true}
bossbar set jkbw:map visible true
function jkbw:play/ready/map/refill with storage jk:bw Map.cur
function jkbw:load/settings/menu