## 已拿着指南针
execute as @s[scores={jkbw.Player.Compass=-1}] run function jkbw:play/compass/mode/_1
execute as @s[scores={jkbw.Player.Compass=0}] run function jkbw:play/compass/mode/0
execute as @s[scores={jkbw.Player.Compass=1}] run function jkbw:play/compass/mode/1/red
execute as @s[scores={jkbw.Player.Compass=2}] run function jkbw:play/compass/mode/1/blue
execute if score #teams jkbw.mem matches 3.. as @s[scores={jkbw.Player.Compass=3}] run function jkbw:play/compass/mode/1/green
execute if score #teams jkbw.mem matches 4.. as @s[scores={jkbw.Player.Compass=4}] run function jkbw:play/compass/mode/1/yellow
execute if score #teams jkbw.mem matches 5.. as @s[scores={jkbw.Player.Compass=5}] run function jkbw:play/compass/mode/1/cyan
execute if score #teams jkbw.mem matches 6.. as @s[scores={jkbw.Player.Compass=6}] run function jkbw:play/compass/mode/1/white
execute if score #teams jkbw.mem matches 7.. as @s[scores={jkbw.Player.Compass=7}] run function jkbw:play/compass/mode/1/pink
execute if score #teams jkbw.mem matches 8.. as @s[scores={jkbw.Player.Compass=8}] run function jkbw:play/compass/mode/1/gray

scoreboard players operation @s[scores={jkbw.Entity.X=..-1}] jkbw.Entity.X *= #-1 jkbw.mem
scoreboard players operation @s[scores={jkbw.Entity.Z=..-1}] jkbw.Entity.Z *= #-1 jkbw.mem
scoreboard players operation @s jkbw.Entity.X += @s jkbw.Entity.Z
# 根号2约等于1.414，而1.414等于707/500
scoreboard players operation @s jkbw.Entity.X *= #707 jkbw.mem
scoreboard players operation @s jkbw.Entity.X /= #500 jkbw.mem
# 约掉多余的
scoreboard players operation @s jkbw.Entity.X /= #1000 jkbw.mem

# 显示
title @s[scores={jkbw.Player.Compass=-1}] actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.compass.enemy"},": ",{"score":{"name": "@s","objective": "jkbw.Entity.X"},"color": "green","bold": true},"m"]
title @s[scores={jkbw.Player.Compass=0}] actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.print.bed"},": ",{"score":{"name": "@s","objective": "jkbw.Entity.X"},"color": "green","bold": true},"m"]
execute as @s[scores={jkbw.Player.Compass=1}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.red","color":"red","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute as @s[scores={jkbw.Player.Compass=2}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.blue","color":"blue","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute if score #teams jkbw.mem matches 3.. as @s[scores={jkbw.Player.Compass=3}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.green","color":"green","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute if score #teams jkbw.mem matches 4.. as @s[scores={jkbw.Player.Compass=4}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.yellow","color":"yellow","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute if score #teams jkbw.mem matches 5.. as @s[scores={jkbw.Player.Compass=5}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.cyan","color":"aqua","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute if score #teams jkbw.mem matches 6.. as @s[scores={jkbw.Player.Compass=6}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.white","color":"white","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute if score #teams jkbw.mem matches 7.. as @s[scores={jkbw.Player.Compass=7}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.pink","color":"light_purple","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]
execute if score #teams jkbw.mem matches 8.. as @s[scores={jkbw.Player.Compass=8}] run title @s actionbar [{"storage":"jk:bw","nbt":"txt.compass.track","color":"gold"},{"storage":"jk:bw","nbt":"txt.display.team.gray","color":"gray","bold":true},": ",{"score":{"name":"@s","objective":"jkbw.Entity.X"},"color":"green","bold":true},"m"]