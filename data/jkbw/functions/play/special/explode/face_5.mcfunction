# 五面
execute as @s[tag=!jkbw_explode_y+] positioned ~ ~1 ~ unless entity @e[type=marker,distance=...1,tag=jkbw_explode] if block ~ ~ ~ #jkbw:canexplode run summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_explode", "jkbw_explode_new", "jkbw_explode_y+"]}
execute as @s[tag=!jkbw_explode_y-] positioned ~ ~-1 ~ unless entity @e[type=marker,distance=...1,tag=jkbw_explode] if block ~ ~ ~ #jkbw:canexplode run summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_explode", "jkbw_explode_new", "jkbw_explode_y-"]}
execute as @s[tag=!jkbw_explode_z+] positioned ~ ~ ~1 unless entity @e[type=marker,distance=...1,tag=jkbw_explode] if block ~ ~ ~ #jkbw:canexplode run summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_explode", "jkbw_explode_new", "jkbw_explode_z+"]}
execute as @s[tag=!jkbw_explode_z-] positioned ~ ~ ~-1 unless entity @e[type=marker,distance=...1,tag=jkbw_explode] if block ~ ~ ~ #jkbw:canexplode run summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_explode", "jkbw_explode_new", "jkbw_explode_z-"]}
execute as @s[tag=!jkbw_explode_x+] positioned ~1 ~ ~ unless entity @e[type=marker,distance=...1,tag=jkbw_explode] if block ~ ~ ~ #jkbw:canexplode run summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_explode", "jkbw_explode_new", "jkbw_explode_x+"]}
execute as @s[tag=!jkbw_explode_x-] positioned ~-1 ~ ~ unless entity @e[type=marker,distance=...1,tag=jkbw_explode] if block ~ ~ ~ #jkbw:canexplode run summon marker ~ ~ ~ {Tags: ["jkbw", "jkbw_explode", "jkbw_explode_new", "jkbw_explode_x-"]}