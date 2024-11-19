execute as @s[scores={jkbw.Player.AxeLevels=4}] run tellraw @s [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.axe","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.update","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_self"}]
execute as @s[scores={jkbw.Player.AxeLevels=4}] run playsound entity.villager.no player @s
execute as @s[scores={jkbw.Player.AxeLevels=3}] run function jkbw:play/shop/item/tool/axe/4
execute as @s[scores={jkbw.Player.AxeLevels=2}] run function jkbw:play/shop/item/tool/axe/3
execute as @s[scores={jkbw.Player.AxeLevels=1}] run function jkbw:play/shop/item/tool/axe/2
execute as @s[scores={jkbw.Player.AxeLevels=0}] run function jkbw:play/shop/item/tool/axe/1