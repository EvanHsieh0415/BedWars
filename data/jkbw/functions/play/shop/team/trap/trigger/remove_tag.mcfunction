title @a[team=!] times 0s 2s 1s

tag @s remove jkbw_trap_alarm_1
tag @s remove jkbw_trap_defend_1
tag @s remove jkbw_trap_is_trap_1
tag @s remove jkbw_trap_mining_1

tag @s[tag=jkbw_trap_alarm_2] add jkbw_trap_alarm_1
tag @s[tag=jkbw_trap_alarm_2] remove jkbw_trap_alarm_2
tag @s[tag=jkbw_trap_alarm_3] add jkbw_trap_alarm_2
tag @s[tag=jkbw_trap_alarm_3] remove jkbw_trap_alarm_3

tag @s[tag=jkbw_trap_defend_2] add jkbw_trap_defend_1
tag @s[tag=jkbw_trap_defend_2] remove jkbw_trap_defend_2
tag @s[tag=jkbw_trap_defend_3] add jkbw_trap_defend_2
tag @s[tag=jkbw_trap_defend_3] remove jkbw_trap_defend_3

tag @s[tag=jkbw_trap_is_trap_2] add jkbw_trap_is_trap_1
tag @s[tag=jkbw_trap_is_trap_2] remove jkbw_trap_is_trap_2
tag @s[tag=jkbw_trap_is_trap_3] add jkbw_trap_is_trap_2
tag @s[tag=jkbw_trap_is_trap_3] remove jkbw_trap_is_trap_3

tag @s[tag=jkbw_trap_mining_2] add jkbw_trap_mining_1
tag @s[tag=jkbw_trap_mining_2] remove jkbw_trap_mining_2
tag @s[tag=jkbw_trap_mining_3] add jkbw_trap_mining_2
tag @s[tag=jkbw_trap_mining_3] remove jkbw_trap_mining_3

scoreboard players remove @s jkbw.Team.TrapNum 1
scoreboard players set @s jkbw.mem 300