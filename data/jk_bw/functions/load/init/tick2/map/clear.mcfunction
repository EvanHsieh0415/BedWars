scoreboard players remove @s jk_bw_mem 1
execute store result bossbar jk_bw_clear_map value run scoreboard players get @s jk_bw_mem
fill ~-90 ~ ~-90 ~90 ~ ~90 air replace #jk_bw:candestroynotbed
tp @s ~ ~-1 ~
kill @e[type=#jk_bw:clear]
execute as @s[scores={jk_bw_mem=..0}] run bossbar set jk_bw_clear_map visible false
kill @s[scores={jk_bw_mem=..0}]