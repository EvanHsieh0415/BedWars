scoreboard players set #time_state jkbw.mem 3
scoreboard players set #level_diamond jkbw.mem 2
scoreboard players operation #time_show jkbw.mem = #time_update jkbw.mem
bossbar set jkbw:game_progress color green
tellraw @a ["",{"text":"钻石点","color":"aqua"},"已升到",{"text":" III ","color":"yellow"},"级."]