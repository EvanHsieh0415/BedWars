advancement revoke @s only jkbw:kill/p_hurt
# 解除隐身和抗性效果
tellraw @s[tag=!jkbw_invisible,nbt={ActiveEffects: [{Id: 11}]}] {"storage":"jk:bw","nbt":"txt.print.no_resist_do_attack","color":"red","bold":true}
tellraw @s[tag=jkbw_invisible] {"storage":"jk:bw","nbt":"txt.print.no_invisi_do_attack","color":"yellow","bold":true}
effect clear @s invisibility
effect clear @s resistance