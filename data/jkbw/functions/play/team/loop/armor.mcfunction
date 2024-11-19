## 药水效果处理
# 隐身处理（+抗性减免）
tag @s[tag=jkbw_invisible] remove jkbw_invisible
tag @s[nbt={ActiveEffects: [{Id: 14}]}] add jkbw_invisible
effect give @s[tag=jkbw_invisible,scores={jkbw.Player.ArmorLevels=0..1}] resistance 1 1 true
effect give @s[tag=jkbw_invisible,scores={jkbw.Player.ArmorLevels=2..3}] resistance 1 2 true
execute as @s[tag=jkbw_invisible,nbt={OnGround: true}] run particle block stone ~ ~ ~ 0.1 0 0.1 0.05 4

# 幸运药水
tag @s[tag=jkbw_lucky] remove jkbw_lucky
tag @s[nbt={ActiveEffects: [{Id: 26}]}] add jkbw_lucky

## 盔甲处理
execute unless score @s jkbw.Player.ArmorLevels matches 1.. run scoreboard players set @s jkbw.Player.ArmorLevels 0

item replace entity @s[tag=jkbw_invisible] armor.head with air
item replace entity @s[tag=jkbw_invisible] armor.chest with air
item replace entity @s[tag=jkbw_invisible] armor.legs with air
item replace entity @s[tag=jkbw_invisible] armor.feet with air

# 各队伍及个人装备
execute as @s[tag=!jkbw_invisible,team=jkbw.red] run function jkbw:play/team/loop/armor/common/red
execute as @s[tag=!jkbw_invisible,team=jkbw.blue] run function jkbw:play/team/loop/armor/common/blue
execute if score #teams jkbw.mem matches 3.. as @s[tag=!jkbw_invisible,team=jkbw.green] run function jkbw:play/team/loop/armor/common/green
execute if score #teams jkbw.mem matches 4.. as @s[tag=!jkbw_invisible,team=jkbw.yellow] run function jkbw:play/team/loop/armor/common/yellow
execute if score #teams jkbw.mem matches 5.. as @s[tag=!jkbw_invisible,team=jkbw.cyan] run function jkbw:play/team/loop/armor/common/cyan
execute if score #teams jkbw.mem matches 6.. as @s[tag=!jkbw_invisible,team=jkbw.white] run function jkbw:play/team/loop/armor/common/white
execute if score #teams jkbw.mem matches 7.. as @s[tag=!jkbw_invisible,team=jkbw.pink] run function jkbw:play/team/loop/armor/common/pink
execute if score #teams jkbw.mem matches 8.. as @s[tag=!jkbw_invisible,team=jkbw.gray] run function jkbw:play/team/loop/armor/common/gray