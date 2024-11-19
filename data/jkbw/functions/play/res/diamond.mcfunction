scoreboard players remove #time_diamond jkbw.mem 1
scoreboard players reset #summon_diamond jkbw.mem
execute if score #time_diamond jkbw.mem matches ..0 run scoreboard players set #summon_diamond jkbw.mem 1

execute if score #summon_diamond jkbw.mem matches 1 at @e[type=text_display,tag=jkbw_diamond_time] unless entity @e[type=item,tag=jkbw_extra_diamond,dx=0,dy=-8,dz=0] run summon item ~ ~ ~ {Age: -32768, PickupDelay: 18, Invulnerable: True, Item: {id: "diamond", Count: 1, tag: {CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28}}, Tags: ["jkbw", "jkbw_res", "jkbw_res_diamond"]}

execute if score #res_mode jkbw.mem matches 0..1 if score #summon_diamond jkbw.mem matches 1 run scoreboard players operation #time_diamond jkbw.mem = #spawn_diamond jkbw.mem
execute if score #res_mode jkbw.mem matches 0..1 if score #summon_diamond jkbw.mem matches 1 if score #level_diamond jkbw.mem matches 2..3 run scoreboard players operation #time_diamond jkbw.mem -= #minus_diamond jkbw.mem
execute if score #res_mode jkbw.mem matches 0..1 if score #summon_diamond jkbw.mem matches 1 if score #level_diamond jkbw.mem matches 3 run scoreboard players operation #time_diamond jkbw.mem -= #minus_diamond jkbw.mem

execute if score #res_mode jkbw.mem matches 0..1 if score #summon_diamond jkbw.mem matches 1 run scoreboard players operation #time_diamond jkbw.mem *= #10 jkbw.mem
execute if score #res_mode jkbw.mem matches 0..1 if score #summon_diamond jkbw.mem matches 1 run scoreboard players operation #time_diamond jkbw.mem /= #res_rate jkbw.mem

execute if score #res_mode jkbw.mem matches 2 if score #summon_diamond jkbw.mem matches 1 run scoreboard players operation #time_diamond jkbw.mem = #spawn_diamond_urf jkbw.mem
execute if score #res_mode jkbw.mem matches 2 if score #summon_diamond jkbw.mem matches 1 if score #level_diamond jkbw.mem matches 2..3 run scoreboard players operation #time_diamond jkbw.mem -= #minus_diamond_urf jkbw.mem
execute if score #res_mode jkbw.mem matches 2 if score #summon_diamond jkbw.mem matches 1 if score #level_diamond jkbw.mem matches 3 run scoreboard players operation #time_diamond jkbw.mem -= #minus_diamond_urf jkbw.mem
