title @a[team=jk_bw_green] title {"text":"陷阱已触发！","color":"red"}
title @a[team=jk_bw_green] subtitle ["团队的 ",{"text":"这是个陷阱！","color":"yellow"}," 已触发！"]
execute as @p[tag=!jk_bw_lucky,team=!jk_bw_green,gamemode=adventure,distance=..8] at @s run function jk_bw:play/shop/team/trap/victim/is_a_trap
function jk_bw:play/shop/team/trap/trigger/remove_tag