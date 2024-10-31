$title @a[team=jkbw.$(team)] title {"storage":"jk:bw","nbt":"txt.print.trap_triggered","color":"red"}
$title @a[team=jkbw.$(team)] subtitle [{"storage":"jk:bw","nbt":"txt.print.triggered"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.defend","color":"yellow"},"!"]
$execute as @a[team=jkbw.$(team),gamemode=adventure,distance=..18] at @s run function jkbw:play/shop/team/trap/trigger/aim/defend
function jkbw:play/shop/team/trap/trigger/remove_tag