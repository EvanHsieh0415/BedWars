$fill ~-$(r1) ~ ~-$(r1) ~$(r1) ~ ~$(r1) air replace #jkbw:candestroy
# 作为商店的末影箱不能清除
execute as @e[type=text_display,tag=jkbw_chest_shop,y_rotation=180] at @s run setblock ~ ~ ~ ender_chest[facing=south]
execute as @e[type=text_display,tag=jkbw_chest_shop,y_rotation=-90] at @s run setblock ~ ~ ~ ender_chest[facing=west]
execute as @e[type=text_display,tag=jkbw_chest_shop,y_rotation=0] at @s run setblock ~ ~ ~ ender_chest[facing=north]
execute as @e[type=text_display,tag=jkbw_chest_shop,y_rotation=90] at @s run setblock ~ ~ ~ ender_chest[facing=east]
