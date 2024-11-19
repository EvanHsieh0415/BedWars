# 计分板显示人数
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=2},limit=1] run team join jkbw.npc_pink §d粉§r
execute store result score @e[type=text_display,tag=jkbw_bed_pink,limit=1,scores={jkbw.Bed.State=3}] jkbw.Team.Alive if entity @a[team=jkbw.pink,scores={jkbw.Player.State=2..3}]

# 团灭后提示，队伍箱子解锁与淘汰（一次）
execute as @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Team.Alive=0,jkbw.Bed.State=3},limit=1] run tellraw @a ["\n",{"storage":"jk:bw","nbt":"txt.display.team.pink","color":"light_purple","bold":true},{"storage":"jk:bw","nbt":"txt.print.eliminated"},"!\n"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Team.Alive=0,jkbw.Bed.State=3},limit=1] at @e[type=text_display,tag=jkbw_chest_pink] run data remove block ~ ~ ~ Lock
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Team.Alive=0,jkbw.Bed.State=3},limit=1] run team join jkbw.npc_out §d粉§r

# 查看剩余人数
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=1},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"1"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=2},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"2"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=3},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"3"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=4},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"4"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=5},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"5"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=6},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"6"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=7},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"7"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=8},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"8"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=9},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"9"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=10},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"10"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=11},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"11"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=12},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"12"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=13},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"13"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=14},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"14"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=15},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"15"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=16},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"16"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=17},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"17"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=18},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"18"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=19},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"19"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=20},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"20"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=21},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"21"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=22},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"22"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=23},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"23"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=24},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"24"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=25},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"25"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=26},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"26"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=27},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"27"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=28},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"28"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=29},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"29"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=30},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"30"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=31},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"31"]
execute if entity @e[type=text_display,tag=jkbw_bed_pink,scores={jkbw.Bed.State=3,jkbw.Team.Alive=32},limit=1] run team modify jkbw.npc_pink suffix ["",{"text":" → ","color":"gray"},"32"]
