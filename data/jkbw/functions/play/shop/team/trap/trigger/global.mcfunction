# 陷阱冷却时间（mem）
scoreboard players remove @e[type=text_display,tag=jkbw_bed_display,scores={jkbw.mem=1..}] jkbw.mem 1

# 陷阱检测敌方入侵
function jkbw:play/shop/team/trap/trigger/check/red
function jkbw:play/shop/team/trap/trigger/check/blue
execute if score #teams jkbw.mem matches 3.. run function jkbw:play/shop/team/trap/trigger/check/green
execute if score #teams jkbw.mem matches 4.. run function jkbw:play/shop/team/trap/trigger/check/yellow
execute if score #teams jkbw.mem matches 5.. run function jkbw:play/shop/team/trap/trigger/check/cyan
execute if score #teams jkbw.mem matches 6.. run function jkbw:play/shop/team/trap/trigger/check/white
execute if score #teams jkbw.mem matches 7.. run function jkbw:play/shop/team/trap/trigger/check/pink
execute if score #teams jkbw.mem matches 8.. run function jkbw:play/shop/team/trap/trigger/check/gray
