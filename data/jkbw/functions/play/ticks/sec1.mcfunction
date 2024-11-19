# execute if score #state jkbw.mem matches 1
# 复活倒计时
execute as @a[team=!,scores={jkbw.Player.State=3,jkbw.Player.RebornTime=1..}] at @s run function jkbw:play/death/title

# 使用物品冷却
scoreboard players remove @a[scores={jkbw.Player.UsePlatformCD=1..}] jkbw.Player.UsePlatformCD 1
scoreboard players remove @a[scores={jkbw.Player.UseBackCD=1..}] jkbw.Player.UseBackCD 1
scoreboard players remove @a[scores={jkbw.Player.UseAntiarrowCD=1..}] jkbw.Player.UseAntiarrowCD 1
scoreboard players remove @a[scores={jkbw.Player.UseIceCD=1..}] jkbw.Player.UseIceCD 1

# 受伤原谅时长
execute as @a[gamemode=adventure,scores={jkbw.Player.State=2}] at @s run function jkbw:play/kill/execuse

# 资源生成
function jkbw:play/res/global

# 团队常驻
execute if score #res_mode jkbw.mem matches 0..1 run function jkbw:play/shop/team/global

# 资源转换
execute if score #res_mode jkbw.mem matches 2 as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] if score @s jkbw.Player.OwnExpLevelsReal >= #urfEemerald jkbw.mem run function jkbw:play/special/convertor

# 防饥饿
effect give @a saturation 1 9 true

# 实体存活时间
scoreboard players remove @e[scores={jkbw.Entity.Time=1..}] jkbw.Entity.Time 1
kill @e[scores={jkbw.Entity.Time=..0}]

# 生命恢复
scoreboard players remove #heal jkbw.mem 1
execute if score #heal jkbw.mem matches ..0 run scoreboard players set #heal jkbw.mem 5
execute if score #heal jkbw.mem matches 5 run effect give @a[gamemode=adventure,scores={jkbw.Player.State=2}] regeneration 1 2 true

# 管理员
effect give @a[gamemode=creative] invisibility infinite 0 true
effect clear @a[gamemode=creative] glowing
tag @a[gamemode=creative] add jkbw_admin
scoreboard players set @a[gamemode=creative] jkbw.Player.State 0
team leave @a[gamemode=creative]

# 游戏开始后，无队伍变为旁观者
team leave @a[scores={jkbw.Player.State=0}]
clear @a[gamemode=adventure,team=,scores={jkbw.Player.State=0}]
tellraw @a[gamemode=adventure,team=,scores={jkbw.Player.State=0}] [{"storage":"jk:bw","nbt":"txt.print.bedwars","color":"yellow"},{"storage":"jk:bw","nbt":"txt.print.game_started","color":"green"}]
gamemode spectator @a[gamemode=!creative,team=]
scoreboard players set @a[scores={jkbw.Player.State=2},team=] jkbw.Player.State 0
team join jkbw.spec @a[gamemode=spectator,team=]

# 游戏计时
function jkbw:play/start/timing

# 检测获胜（测试模式未开时）
execute unless score #test_mode jkbw.mem matches 1 run function jkbw:play/end/check