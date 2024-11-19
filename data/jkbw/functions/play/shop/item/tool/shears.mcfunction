execute as @s[scores={jkbw.Player.ShearsLevels=4}] run tellraw @s [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.shears","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.update","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_self"}]
execute as @s[scores={jkbw.Player.ShearsLevels=4}] run playsound entity.villager.no player @s
execute as @s[scores={jkbw.Player.ShearsLevels=3}] run function jkbw:play/shop/item/tool/shears/4
execute as @s[scores={jkbw.Player.ShearsLevels=2}] run function jkbw:play/shop/item/tool/shears/3
execute as @s[scores={jkbw.Player.ShearsLevels=1}] run function jkbw:play/shop/item/tool/shears/2
execute as @s[scores={jkbw.Player.ShearsLevels=0}] run function jkbw:play/shop/item/tool/shears/1