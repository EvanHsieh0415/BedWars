# 生成的新实体
execute as @e[tag=jkbw_new_entity] at @s run function jkbw:play/special/new_entity

# 搭桥蛋的桥
execute as @e[type=egg,tag=jkbw_egg] at @s run function jkbw:play/special/egg/tick1
# 铁傀儡
execute as @e[type=iron_golem,tag=jkbw_iron_golem] at @s run function jkbw:play/special/iron_golem/show
# 建造塔
execute as @e[type=marker,tag=jkbw_tower] at @s run function jkbw:play/special/tower/tick1
# tnt
execute as @e[type=tnt,tag=jkbw_tnt] at @s run function jkbw:play/special/tnt/tick1
# 末影箱
execute as @e[type=marker,tag=jkbw_chest_player] at @s run function jkbw:play/special/ender_chest/check
# 火球
execute as @e[tag=jkbw_fireball] run function jkbw:play/special/fireball/tick1
execute as @e[tag=jkbw_fireball1] at @s unless entity @e[type=fireball,tag=jkbw_fireball,distance=..2,limit=1] run function jkbw:play/special/fireball/explode
# 报警陷阱
execute as @e[type=marker,tag=jkbw_alarm_marker] at @s run function jkbw:play/shop/team/trap/trigger/sub/ring
# 急救平台
execute as @e[type=marker,tag=jkbw_slime] at @s run function jkbw:play/special/platform/count
# 真·冰霜行者
execute as @e[type=marker,tag=jkbw_ice] at @s run function jkbw:play/special/platform/count
# 冰桥
execute as @e[type=marker,tag=jkbw_ice_summoner] at @s run function jkbw:play/special/ice/last1
