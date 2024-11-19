summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_new_entity", "jkbw_alarm_marker"]}
title @a[team=jkbw.blue] title {"storage":"jk:bw","nbt":"txt.print.trap_triggered","color":"red"}
title @a[team=jkbw.blue] subtitle [{"storage":"jk:bw","nbt":"txt.print.triggered"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.trap.list.name.alarm","color":"yellow"},"!"]
execute as @p[tag=!jkbw_lucky,team=!jkbw.blue,gamemode=adventure,distance=..16] run function jkbw:play/shop/team/trap/trigger/aim/alarm
function jkbw:play/shop/team/trap/trigger/remove_tag