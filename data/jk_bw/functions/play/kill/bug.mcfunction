advancement revoke @s only jk_bw:kill/bug
tag @s add jk_bw_vic
scoreboard players set @s jk_bw_PlayerDamageType 3
scoreboard players set @s jk_bw_PlayerExecuseTime 15
scoreboard players operation @s jk_bw_Temp = @e[limit=1,sort=nearest,type=silverfish,distance=..5] jk_bw_PlayerUUID