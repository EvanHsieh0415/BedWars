datapack disable vanilla
playsound block.note_block.bell player @s
tag @s add jk_bw_admin
function jk_bw:load/ticks/load
function jk_bw:load/settings/version

tellraw @a[tag=jk_bw_admin] [{"text":"\n\n\n\n\n\n\n\n\n\n=============","color":"green"},{"text":" 起床战争工具包 ","color":"yellow"},"============\n"]
execute if score #version jk_bw_mem matches 17 run tellraw @a[tag=jk_bw_admin] {"text":"当前游戏版本：1.17.X","color":"yellow"}
execute if score #version jk_bw_mem matches 18 run tellraw @a[tag=jk_bw_admin] {"text":"当前游戏版本：1.18.X","color":"yellow"}
execute if score #version jk_bw_mem matches 19 run tellraw @a[tag=jk_bw_admin] {"text":"当前游戏版本：1.19.X","color":"yellow"}
execute if score #test_mode jk_bw_mem matches 1 run tellraw @a[tag=jk_bw_admin] {"text":"注意：已开启测试模式！","color":"red","bold":true}
tellraw @a[tag=jk_bw_admin] ["必看设置：",{"text":"[使用方法]","color":"gold","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/tips"},"hoverEvent":{"action":"show_text","value":"※必看※"}},"  ",{"text":"[函数反馈]","color":"gray","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/feedback"},"hoverEvent":{"action":"show_text","value":"没啥事的话不建议点击此选项"}},"  ",{"text":"[测试模式]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/test_mode"},"hoverEvent":{"action":"show_text","value":"没人玩？但是想看看游戏内容？那就点我！"}}]

execute unless entity @e[tag=jk_bw_worldspawn] run tellraw @a[tag=jk_bw_admin] ["全局设置：",{"text":"[一些必要物品]","color":"aqua","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/ness"},"hoverEvent":{"action":"show_text","value":"玩家提示牌和一些物品"}},"  ",{"text":"[全局传送点]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/worldspawn"},"hoverEvent":{"action":"show_text","value":"建议放在y=150格及其以上（不然没法清理地图）， 准备中的玩家在此点以下10格会被自动传送。 是初次进入游戏到达点和死亡传送点， 又为起床战争地图中心设置边界，直径181格"}}]
execute if entity @e[tag=jk_bw_worldspawn] run tellraw @a[tag=jk_bw_admin] ["全局设置：",{"text":"[一些必要物品]","color":"aqua","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/ness"},"hoverEvent":{"action":"show_text","value":"玩家提示牌和一些物品"}},"  ",{"text":"[全局传送点]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/worldspawn"},"hoverEvent":{"action":"show_text","value":"建议放在y=150格及其以上（不然没法清理地图）， 准备中的玩家在此点以下10格会被自动传送。 第一次进入游戏到达点和死亡传送点， 又为起床战争地图中心设置边界，直径181格"}},"  ",{"text":"[清理地图]","color":"blue","clickEvent":{"action":"run_command","value":"/function jk_bw:load/init/tick2/map/init"},"hoverEvent":{"action":"show_text","value":"从全局传送点下方10格开始， 一层一层逐级清理玩家摆放的方块"}}]

#function jk_bw:load/settings/menu/play_mode
execute if score #teams jk_bw_mem matches 2 run tellraw @a[tag=jk_bw_admin] ["队伍数量：",{"text":"[2队]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/teams/num/2"},"hoverEvent":{"action":"show_text","value":"限制人数2~8"}},"  ",{"text":"[4队]","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/teams/num/4"},"hoverEvent":{"action":"show_text","value":"限制人数2~16"}}]
execute if score #teams jk_bw_mem matches 4 run tellraw @a[tag=jk_bw_admin] ["队伍数量：",{"text":"[2队]","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/teams/num/2"},"hoverEvent":{"action":"show_text","value":"限制人数2~8"}},"  ",{"text":"[4队]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/teams/num/4"},"hoverEvent":{"action":"show_text","value":"限制人数2~16"}}]

tellraw @a[tag=jk_bw_admin] ["队伍点设置：",{"text":"[这是一个重要的二级菜单所以要写这么长]","color":"gold","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/teams/check"}}]

tellraw @a[tag=jk_bw_admin] ["设置资源点：",{"text":"[钻石点]","color":"aqua","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/res/diamond"}},"  ",{"text":"[绿宝石点]","color":"green","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/res/emerald"}},"\n清除资源点：",{"text":"[钻石点]","color":"gray","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/res/diamond_clear"}},"  ",{"text":"[绿宝石点]","color":"gray","clickEvent":{"action":"run_command","value":"/function jk_bw:load/settings/menu/res/emerald_clear"}}]

execute unless score #test_mode jk_bw_mem matches 1 run tellraw @a[tag=jk_bw_admin] [{"text":"\n==============","color":"green"},{"text":" [开始游戏] ","color":"light_purple","hoverEvent":{"action":"show_text","value":"请玩家们使用物品栏最后一格报名！"}},"=============="]
execute if score #test_mode jk_bw_mem matches 1 run tellraw @a[tag=jk_bw_admin] [{"text":"\n==============","color":"green"},{"text":" [开始游戏] ","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function jk_bw:play/start/ready"},"hoverEvent":{"action":"show_text","value":"以测试模式启动"}},"=============="]