scoreboard players set #state jkbw.mem 2
stopsound @a
playsound ui.toast.challenge_complete player @a 10110223 100 10110223 1000000000

title @a title {"storage":"jk:bw","nbt":"txt.print.congrats","color":"yellow","bold":true}
title @a times 1s 6s 1s

execute if entity @p[team=jkbw.red,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.red","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if entity @p[team=jkbw.blue,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.blue","color":"blue"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if score #teams jkbw.mem matches 3.. if entity @p[team=jkbw.green,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.green","color":"green"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if score #teams jkbw.mem matches 4.. if entity @p[team=jkbw.yellow,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.yellow","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if score #teams jkbw.mem matches 5.. if entity @p[team=jkbw.cyan,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.cyan","color":"aqua"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if score #teams jkbw.mem matches 6.. if entity @p[team=jkbw.white,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.white","color":"white"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if score #teams jkbw.mem matches 7.. if entity @p[team=jkbw.pink,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.pink","color":"light_purple"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]
execute if score #teams jkbw.mem matches 8.. if entity @p[team=jkbw.gray,scores={jkbw.Player.State=2..3}] run title @a subtitle ["",{"storage":"jk:bw","nbt":"txt.display.team.gray","color":"gray"}," ",{"storage":"jk:bw","nbt":"txt.print.win_round","color":"gold"}]

tellraw @a ["\n\n\n\n",{"storage":"jk:bw","nbt":"txt.print.bedwars1","color":"yellow","bold":true},"\n"]

tag @a remove jkbw_win
tag @p[scores={jkbw.Player.State=2..3}] add jkbw_win
execute as @a[scores={jkbw.Player.State=2..}] if score @s jkbw.Team.ID = @p[tag=jkbw_win] jkbw.Team.ID run tag @s add jkbw_win
tellraw @a [{"storage":"jk:bw","nbt":"txt.print.win_players"},": ",{"selector":"@a[tag=jkbw_win]"}]
scoreboard players add @a[tag=jkbw_win] jkbw.Player.Wins 1

function jkbw:play/end/rank
schedule function jkbw:play/end/restart 10s