$execute store result score @s jkbw.ResCount.$(Res) if entity @e[type=item,tag=jkbw_res_$(res),dx=0,dy=-8,dz=0]
$execute as @s[scores={jkbw.ResCount.$(Res)=$(count)..}] run summon item ~ ~ ~ {Age: -32768, PickupDelay: 18, Invulnerable: True, Item: {id: "$(res)", Count: $(count), tag: {CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28}}, Tags: ["jkbw", "jkbw_extra_$(res)", "jkbw_res"]}
$execute as @s[scores={jkbw.ResCount.$(Res)=$(count)..}] run kill @e[type=item,tag=jkbw_res_$(res),dx=0,dy=-8,dz=0]