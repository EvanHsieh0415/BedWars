# 急迫
execute if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Haste=0}] run effect clear @a[team=jkbw.green] haste
execute if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Haste=1}] run effect give @a[team=jkbw.green] haste infinite 0 true
execute if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Haste=2}] run effect give @a[team=jkbw.green] haste infinite 1 true

# 治愈池
execute at @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Healing=1}] run effect give @a[team=jkbw.green,distance=..18] regeneration 3 0 true

# 死斗增强
execute if score #time_state jkbw.mem matches 6 if entity @e[type=text_display,tag=jkbw_spawn_green,limit=1,scores={jkbw.Team.Dragon=1}] run effect give @a[team=jkbw.green] strength infinite 1 true