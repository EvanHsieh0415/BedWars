scoreboard players remove #time_emerald jkbw.mem 1
scoreboard players reset #summon_emerald jkbw.mem
execute if score #time_emerald jkbw.mem matches ..0 run scoreboard players set #summon_emerald jkbw.mem 1

execute if score #summon_emerald jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_emerald_time] unless entity @e[type=item,tag=jkbw_extra_emerald,dx=0,dy=-8,dz=0] run summon item ~ ~ ~ {Age: -32768, PickupDelay: 18, Invulnerable: True, Item: {id: "emerald", Count: 1, tag: {CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28}}, Tags: ["jkbw", "jkbw_res", "jkbw_res_emerald"]}

execute if score #res_mode jkbw.mem matches 0..1 if score #summon_emerald jkbw.mem matches 1 run scoreboard players operation #time_emerald jkbw.mem = #spawn_emerald jkbw.mem
execute if score #res_mode jkbw.mem matches 0..1 if score #summon_emerald jkbw.mem matches 1 if score #level_emerald jkbw.mem matches 2..3 run scoreboard players operation #time_emerald jkbw.mem -= #minus_emerald jkbw.mem
execute if score #res_mode jkbw.mem matches 0..1 if score #summon_emerald jkbw.mem matches 1 if score #level_emerald jkbw.mem matches 3 run scoreboard players operation #time_emerald jkbw.mem -= #minus_emerald jkbw.mem

execute if score #res_mode jkbw.mem matches 0..1 if score #summon_emerald jkbw.mem matches 1 run scoreboard players operation #time_emerald jkbw.mem *= #10 jkbw.mem
execute if score #res_mode jkbw.mem matches 0..1 if score #summon_emerald jkbw.mem matches 1 run scoreboard players operation #time_emerald jkbw.mem /= #res_rate jkbw.mem

execute if score #res_mode jkbw.mem matches 2 if score #summon_emerald jkbw.mem matches 1 run scoreboard players operation #time_emerald jkbw.mem = #spawn_emerald_urf jkbw.mem
execute if score #res_mode jkbw.mem matches 2 if score #summon_emerald jkbw.mem matches 1 if score #level_emerald jkbw.mem matches 2..3 run scoreboard players operation #time_emerald jkbw.mem -= #minus_emerald_urf jkbw.mem
execute if score #res_mode jkbw.mem matches 2 if score #summon_emerald jkbw.mem matches 1 if score #level_emerald jkbw.mem matches 3 run scoreboard players operation #time_emerald jkbw.mem -= #minus_emerald_urf jkbw.mem
