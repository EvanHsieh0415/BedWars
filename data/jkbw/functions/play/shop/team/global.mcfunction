## 团队加成
function jkbw:play/shop/team/buff/red
function jkbw:play/shop/team/buff/blue
execute if score #teams jkbw.mem matches 3.. run function jkbw:play/shop/team/buff/green
execute if score #teams jkbw.mem matches 4.. run function jkbw:play/shop/team/buff/yellow
execute if score #teams jkbw.mem matches 5.. run function jkbw:play/shop/team/buff/cyan
execute if score #teams jkbw.mem matches 6.. run function jkbw:play/shop/team/buff/white
execute if score #teams jkbw.mem matches 7.. run function jkbw:play/shop/team/buff/pink
execute if score #teams jkbw.mem matches 8.. run function jkbw:play/shop/team/buff/gray

# 治愈池粒子
execute at @e[type=text_display,tag=jkbw_point,scores={jkbw.Team.Healing=1}] run particle happy_villager ~ ~ ~ 8 6 8 1 100 normal @a