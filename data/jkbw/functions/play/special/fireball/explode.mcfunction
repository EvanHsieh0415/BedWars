# 当火球消失即爆炸
execute align xyz run tp @s ~.5 ~-.5 ~.5
tag @s add jkbw_explode
tag @s add jkbw_explode_center
tag @s add jkbw_explode_fireball
scoreboard players set @s jkbw.Temp 33
scoreboard players set #explode_times jkbw.mem 4
function jkbw:play/special/explode/init
kill @s