scoreboard players set @s jkbw.Player.UseBackLast -1
tellraw @s {"storage":"jk:bw","nbt":"txt.print.back_scroll_return","color": "yellow"}
give @s paper{CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28, jkbw: ["offhand_use"]}