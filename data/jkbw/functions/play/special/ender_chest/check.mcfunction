# 改变形态，防止夹缝挖掘
execute if block ~ ~ ~ air run function jkbw:play/special/ender_chest/alarm
execute unless block ~ ~ ~ air unless entity @p[distance=..1.5,gamemode=adventure] run setblock ~ ~ ~ ancient_debris
execute unless block ~ ~ ~ air if entity @p[distance=..1.5,gamemode=adventure] unless score @s jkbw.Team.ID = @p[distance=..1.5,gamemode=adventure] jkbw.Team.ID run setblock ~ ~ ~ ancient_debris
execute unless block ~ ~ ~ air if entity @p[distance=..1.5,gamemode=adventure] if score @s jkbw.Team.ID = @p[distance=..1.5,gamemode=adventure] jkbw.Team.ID run setblock ~ ~ ~ ender_chest
