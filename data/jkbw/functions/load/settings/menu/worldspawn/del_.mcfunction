## 输入：id
$function jkbw:load/settings/menu/worldspawn/forceload with storage jk:bw Map.maps.$(id)
$function jkbw:load/settings/menu/worldspawn/del__ with storage jk:bw Map.maps.$(id)

$data remove storage jk:bw Map.maps.$(id)
$data remove storage jk:bw Map.mapsP.$(id)
$tellraw @s [{"translate":"item.minecraft.filled_map","color":"yellow"}," $(id) ",{"translate":"gui.done","color":"green"},"!"]