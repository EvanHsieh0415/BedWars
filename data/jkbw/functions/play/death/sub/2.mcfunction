$tp @s @e[type=text_display,tag=jkbw_spawn_$(team),limit=1]
$execute as @e[type=text_display,tag=jkbw_spawn_$(team),limit=1] at @s run playsound block.beacon.activate player @a[distance=..5]