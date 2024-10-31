advancement revoke @s only jkbw:kill/hurt_any
tellraw @s[tag=jkbw_invisible,scores={jkbw.Player.DamageType=2..}] {"storage":"jk:bw","nbt":"txt.print.no_invisi_be_attack","color":"yellow","bold":true}
effect clear @s[scores={jkbw.Player.DamageType=2..}] invisibility