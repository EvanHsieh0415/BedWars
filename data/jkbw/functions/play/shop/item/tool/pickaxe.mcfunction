execute as @s[scores={jkbw.Player.PickaxeLevels=4}] run tellraw @s [{"storage":"jk:bw","nbt":"txt.print.buy_cannot","color":"red"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.pickaxe","color":"yellow"}," ",{"storage":"jk:bw","nbt":"txt.item.shop.update","color":"yellow"},", ",{"storage":"jk:bw","nbt":"txt.print.because_lvl_max_self"}]
execute as @s[scores={jkbw.Player.PickaxeLevels=4}] run playsound entity.villager.no player @s
execute as @s[scores={jkbw.Player.PickaxeLevels=3}] run function jkbw:play/shop/item/tool/pickaxe/4
execute as @s[scores={jkbw.Player.PickaxeLevels=2}] run function jkbw:play/shop/item/tool/pickaxe/3
execute as @s[scores={jkbw.Player.PickaxeLevels=1}] run function jkbw:play/shop/item/tool/pickaxe/2
execute as @s[scores={jkbw.Player.PickaxeLevels=0}] run function jkbw:play/shop/item/tool/pickaxe/1