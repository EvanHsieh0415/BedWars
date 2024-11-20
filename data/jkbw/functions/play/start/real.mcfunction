## 游戏正式开始前置
# 队伍（注意：必须用菜单把出生点和床放好）
execute as @e[type=text_display,tag=jkbw_spawn_display] run function jkbw:play/start/marker/spawn
execute as @e[type=text_display,tag=jkbw_bed_display] at @s run function jkbw:play/start/marker/bed

# 资源
fill 10110222 1 10110216 10110214 1 10110209 barrel[facing=up]{Items: []}
tag @e[type=text_display,tag=jkbw_gold_time] remove jkbw_emerald_time
scoreboard players set @e[type=text_display,tag=jkbw_gold_time] jkbw.ResCD.Gold -1
scoreboard players set @e[type=text_display,tag=jkbw_iron_time] jkbw.ResCD.Iron -1
scoreboard players set @e[type=text_display,tag=jkbw_res_spawn] jkbw.Team.Res 0
scoreboard players set #level_diamond jkbw.mem 1
scoreboard players set #level_emerald jkbw.mem 1
scoreboard players set #time_diamond jkbw.mem 1
scoreboard players set #time_emerald jkbw.mem 1
kill @e[type=item,tag=jkbw_res]
kill @e[type=marker,tag=jkbw_chest_player]

# 全局
execute if score #current_game jkbw.mem matches 100000.. run scoreboard players reset #current_game jkbw.mem
scoreboard players add #current_game jkbw.mem 1
scoreboard players set #state jkbw.mem 1
scoreboard players set #time_state jkbw.mem 0

# 轮换道具（1才启用）
execute if score #res_mode jkbw.mem matches 0..1 store result score #ENABLE_fruit jkbw.mem run random value 1..2
execute if score #res_mode jkbw.mem matches 0..1 store result score #ENABLE_trident jkbw.mem run random value 1..3
execute if score #res_mode jkbw.mem matches 0..1 store result score #ENABLE_arrow_s jkbw.mem run random value 1..2
execute if score #res_mode jkbw.mem matches 0..1 store result score #ENABLE_crossbow_max jkbw.mem run random value 1..10
execute if score #res_mode jkbw.mem matches 0..1 store result score #ENABLE_ice_bridge jkbw.mem run random value 1..3

# 资源产生时间
execute unless score #spawn_diamond jkbw.mem matches 10..100 run scoreboard players set #spawn_diamond jkbw.mem 30
scoreboard players operation #spawn_diamond jkbw.Temp = #spawn_diamond jkbw.mem
scoreboard players operation #spawn_diamond jkbw.Temp /= #2 jkbw.mem
execute unless score #minus_diamond jkbw.mem < #spawn_diamond jkbw.Temp run scoreboard players set #minus_diamond jkbw.mem 5
execute unless score #spawn_diamond_urf jkbw.mem matches 10..100 run scoreboard players set #spawn_diamond_urf jkbw.mem 15
scoreboard players operation #spawn_diamond_urf jkbw.Temp = #spawn_diamond_urf jkbw.mem
scoreboard players operation #spawn_diamond_urf jkbw.Temp /= #2 jkbw.mem
execute unless score #minus_diamond_urf jkbw.mem < #spawn_diamond_urf jkbw.Temp run scoreboard players set #minus_diamond_urf jkbw.mem 1
execute unless score #spawn_emerald jkbw.mem matches 10..100 run scoreboard players set #spawn_emerald jkbw.mem 55
scoreboard players operation #spawn_emerald jkbw.Temp = #spawn_emerald jkbw.mem
scoreboard players operation #spawn_emerald jkbw.Temp /= #2 jkbw.mem
execute unless score #minus_emerald jkbw.mem < #spawn_emerald jkbw.Temp run scoreboard players set #minus_emerald jkbw.mem 5
execute unless score #spawn_emerald_urf jkbw.mem matches 10..100 run scoreboard players set #spawn_emerald_urf jkbw.mem 5
scoreboard players operation #spawn_emerald_urf jkbw.Temp = #spawn_emerald_urf jkbw.mem
scoreboard players operation #spawn_emerald_urf jkbw.Temp /= #2 jkbw.mem
execute unless score #minus_emerald_urf jkbw.mem < #spawn_emerald_urf jkbw.Temp run scoreboard players set #minus_emerald_urf jkbw.mem 1

# 全局时间计时
execute unless score #time_update jkbw.mem matches 10..1000 run scoreboard players set #time_update jkbw.mem 300
execute unless score #time_bed jkbw.mem matches 10..1000 run scoreboard players set #time_bed jkbw.mem 600
execute unless score #time_fight jkbw.mem matches 10..1000 run scoreboard players set #time_fight jkbw.mem 600
execute unless score #time_end jkbw.mem matches 10..1000 run scoreboard players set #time_end jkbw.mem 600
scoreboard players operation #time jkbw.mem = #time_end jkbw.mem
scoreboard players operation #time6 jkbw.mem = #time jkbw.mem
scoreboard players operation #time jkbw.mem += #time_fight jkbw.mem
scoreboard players operation #time5 jkbw.mem = #time jkbw.mem
scoreboard players operation #time jkbw.mem += #time_bed jkbw.mem
scoreboard players operation #time4 jkbw.mem = #time jkbw.mem
scoreboard players operation #time jkbw.mem += #time_update jkbw.mem
scoreboard players operation #time3 jkbw.mem = #time jkbw.mem
scoreboard players operation #time jkbw.mem += #time_update jkbw.mem
scoreboard players operation #time2 jkbw.mem = #time jkbw.mem
scoreboard players operation #time jkbw.mem += #time_update jkbw.mem
scoreboard players operation #time1 jkbw.mem = #time jkbw.mem
scoreboard players operation #time jkbw.mem += #time_update jkbw.mem
scoreboard players operation #time0 jkbw.mem = #time jkbw.mem
scoreboard players add #time jkbw.mem 1

execute as @e[tag=jkbw,tag=!jkbw_res_global] run data modify entity @s view_range set value 0f
function jkbw:play/start/display
data modify storage jk:bw Alive set value {red:0,blue:0,green:0,yellow:0,cyan:0,white:0,pink:0,gray:0}
execute if score #bed_type jkbw.mem matches 2 as @e[type=text_display,tag=jkbw_bed_display] at @s run function jkbw:play/start/special_mode/dream/marker

# 地图
bossbar set jkbw:map visible false
kill @e[type=marker,tag=jkbw_map_clean]
kill @e[type=marker,tag=jkbw_map_convert]
kill @e[type=marker,tag=jkbw_back]
function jkbw:load/settings/menu/worldspawn/current with storage jk:bw Map.cur

# 玩家
scoreboard players reset @a jkbw.Player.ArmorLevels
scoreboard players reset @a jkbw.Player.AxeLevels
scoreboard players reset @a jkbw.Player.PickaxeLevels
scoreboard players reset @a jkbw.Player.ShearsLevels
scoreboard players reset @a jkbw.Player.OwnExpLevels
scoreboard players reset @a jkbw.Player.OwnExpLevelsReal
scoreboard players reset @a jkbw.Player.DeathImp
scoreboard players reset @a jkbw.Player.RebornTime
scoreboard players reset @a jkbw.Player.Kills
scoreboard players set @a jkbw.Player.UsePlatformCD 0
scoreboard players set @a jkbw.Player.UseBackCD 0
scoreboard players set @a jkbw.Player.UseBackLast 0
scoreboard players set @a jkbw.Player.UseAntiarrowCD 0
scoreboard players set @a jkbw.Player.UseAntiarrowLast 0
scoreboard players set @a jkbw.Player.UseIceCD 0
scoreboard players set @a jkbw.Player.UseIceLast 0
scoreboard players set @a jkbw.Player.Page 0
execute if score #res_mode jkbw.mem matches 0..1 run scoreboard players set @a jkbw.Player.Compass 0
execute if score #res_mode jkbw.mem matches 2 run scoreboard players set @a jkbw.Player.Compass -1
scoreboard players operation @a jkbw.CurrentGame = #current_game jkbw.mem
xp set @a 0 levels
xp set @a 0 points
title @a title ""
title @a subtitle ""
execute as @a run function jkbw:play/shop/gui/chest/player/clear
item replace entity @a hotbar.4 from block 10110209 3 10110222 container.3
gamemode adventure @a
playsound block.note_block.banjo player @a
tag @a remove jkbw_own_chest
effect clear @a
effect give @a resistance 5 4 true
effect give @a instant_health 1 20 true

# 测试用
execute if score #test_mode jkbw.mem matches 1 run function jkbw:play/start/special_mode/test

# 分配队伍
execute unless score #test_mode jkbw.mem matches 1 run function jkbw:play/start/reduce
scoreboard players set @a[scores={jkbw.Player.State=1}] jkbw.Player.State 2
bossbar set jkbw:player_ready visible false
execute unless score #test_mode jkbw.mem matches 1 unless score #team_mode jkbw.mem matches 1 run function jkbw:play/team/distribute
execute unless score #test_mode jkbw.mem matches 1 if score #team_mode jkbw.mem matches 1 run function jkbw:play/team/distribute_

# 玩家编号（按队伍）
scoreboard players reset #temp jkbw.mem
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.red] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 2 run scoreboard players set #temp jkbw.mem 32
execute if score #teams jkbw.mem matches 3 run scoreboard players set #temp jkbw.mem 21
execute if score #teams jkbw.mem matches 4 run scoreboard players set #temp jkbw.mem 16
execute if score #teams jkbw.mem matches 5 run scoreboard players set #temp jkbw.mem 12
execute if score #teams jkbw.mem matches 6 run scoreboard players set #temp jkbw.mem 10
execute if score #teams jkbw.mem matches 7 run scoreboard players set #temp jkbw.mem 9
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 8
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.blue] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 3 run scoreboard players set #temp jkbw.mem 42
execute if score #teams jkbw.mem matches 4 run scoreboard players set #temp jkbw.mem 32
execute if score #teams jkbw.mem matches 5 run scoreboard players set #temp jkbw.mem 24
execute if score #teams jkbw.mem matches 6 run scoreboard players set #temp jkbw.mem 20
execute if score #teams jkbw.mem matches 7 run scoreboard players set #temp jkbw.mem 18
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 16
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.green] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 4 run scoreboard players set #temp jkbw.mem 48
execute if score #teams jkbw.mem matches 5 run scoreboard players set #temp jkbw.mem 36
execute if score #teams jkbw.mem matches 6 run scoreboard players set #temp jkbw.mem 30
execute if score #teams jkbw.mem matches 7 run scoreboard players set #temp jkbw.mem 27
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 24
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.yellow] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 5 run scoreboard players set #temp jkbw.mem 48
execute if score #teams jkbw.mem matches 6 run scoreboard players set #temp jkbw.mem 40
execute if score #teams jkbw.mem matches 7 run scoreboard players set #temp jkbw.mem 36
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 32
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.cyan] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 6 run scoreboard players set #temp jkbw.mem 50
execute if score #teams jkbw.mem matches 7 run scoreboard players set #temp jkbw.mem 45
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 40
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.white] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 7 run scoreboard players set #temp jkbw.mem 54
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 48
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.pink] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute if score #teams jkbw.mem matches 8 run scoreboard players set #temp jkbw.mem 56
execute as @a[scores={jkbw.Player.State=2},sort=random,team=jkbw.gray] store result score @s jkbw.Player.ID run scoreboard players add #temp jkbw.mem 1
execute as @a run scoreboard players operation @s jkbw.Temp = @s jkbw.Player.ID