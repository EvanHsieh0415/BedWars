title @a[team=jkbw.gray] title {"storage":"jk:bw","nbt":"txt.print.trap_triggered","color":"red"}
title @a[team=jkbw.gray] subtitle [{"storage":"jk:bw","nbt":"txt.print.triggered"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.mining","color":"yellow"},"!"]
execute as @p[tag=!jkbw_lucky,team=!jkbw.gray,gamemode=adventure,distance=..16] at @s run function jkbw:play/shop/team/trap/trigger/aim/mining_fatigue
function jkbw:play/shop/team/trap/trigger/remove_tag