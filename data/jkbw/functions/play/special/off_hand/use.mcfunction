# 火球
execute as @s[nbt={SelectedItem: {id: "minecraft:fire_charge"}}] anchored eyes run function jkbw:play/special/fireball/trigger

# 急救平台
execute as @s[scores={jkbw.Player.UsePlatformCD=1..},nbt={SelectedItem: {id: "minecraft:blaze_rod"}}] run title @s actionbar ["",{"storage":"jk:bw","nbt":"txt.item.shop.platform.name","color":"red","bold":true},{"storage":"jk:bw","nbt":"txt.print._s","color":"yellow"},{"storage":"jk:bw","nbt":"txt.print.cd_remain","color":"yellow"},{"score":{"name":"@s","objective":"jkbw.Player.UsePlatformCD"},"color":"red"},{"text":"s!","color":"yellow"}]
execute as @s[scores={jkbw.Player.UsePlatformCD=0},nbt={SelectedItem: {id: "minecraft:blaze_rod"}, OnGround: true}] run title @s actionbar {"storage":"jk:bw","nbt":"txt.print.platform_cannot","color":"yellow"}
execute as @s[scores={jkbw.Player.UsePlatformCD=0},nbt={SelectedItem: {id: "minecraft:blaze_rod"}, OnGround: false}] align xyz run function jkbw:play/special/platform/trigger

# 回城卷轴
execute as @s[scores={jkbw.Player.UseBackCD=1..},nbt={SelectedItem: {id: "minecraft:paper"}}] run title @s actionbar ["",{"storage":"jk:bw","nbt":"txt.item.shop.back_scroll.name","color":"red","bold":true},{"storage":"jk:bw","nbt":"txt.print._s","color":"yellow"},{"storage":"jk:bw","nbt":"txt.print.cd_remain","color":"yellow"},{"score":{"name":"@s","objective":"jkbw.Player.UseBackCD"},"color":"red"},{"text":"s!","color":"yellow"}]
execute as @s[scores={jkbw.Player.UseBackCD=0},nbt={SelectedItem: {id: "minecraft:paper"}}] run function jkbw:play/special/back/trigger

# 剑气力场
execute as @s[scores={jkbw.Player.UseAntiarrowCD=1..},nbt={SelectedItem: {id: "minecraft:prismarine_shard"}}] run title @s actionbar ["",{"storage":"jk:bw","nbt":"txt.item.shop.anti_arrow.name","color":"red","bold":true},{"storage":"jk:bw","nbt":"txt.print._s","color":"yellow"},{"storage":"jk:bw","nbt":"txt.print.cd_remain","color":"yellow"},{"score":{"name":"@s","objective":"jkbw.Player.UseAntiarrowCD"},"color":"red"},{"text":"s!","color":"yellow"}]
execute as @s[scores={jkbw.Player.UseAntiarrowCD=0},nbt={SelectedItem: {id: "minecraft:prismarine_shard"}}] run function jkbw:play/special/anti_arrow/trigger

# 冰桥/真·冰霜行者
execute if score #res_mode jkbw.mem matches 0..1 as @s[scores={jkbw.Player.UseIceCD=1..},nbt={SelectedItem: {id: "minecraft:ice"}}] run title @s actionbar ["",{"storage":"jk:bw","nbt":"txt.item.shop.ice_bridge.name","color":"red","bold":true},{"storage":"jk:bw","nbt":"txt.print._s","color":"yellow"},{"storage":"jk:bw","nbt":"txt.print.cd_remain","color":"yellow"},{"score":{"name":"@s","objective":"jkbw.Player.UseIceCD"},"color":"red"},{"text":"s!","color":"yellow"}]
execute if score #res_mode jkbw.mem matches 2 as @s[scores={jkbw.Player.UseIceCD=1..},nbt={SelectedItem: {id: "minecraft:ice"}}] run title @s actionbar ["",{"storage":"jk:bw","nbt":"txt.item.shop.ice_walker.name","color":"red","bold":true},{"storage":"jk:bw","nbt":"txt.print._s","color":"yellow"},{"storage":"jk:bw","nbt":"txt.print.cd_remain","color":"yellow"},{"score":{"name":"@s","objective":"jkbw.Player.UseIceCD"},"color":"red"},{"text":"s!","color":"yellow"}]
execute as @s[scores={jkbw.Player.UseIceCD=0},nbt={SelectedItem: {id: "minecraft:ice"}}] run function jkbw:play/special/ice/trigger

# 重置右键
scoreboard players reset @s jkbw.Player.Use