execute store result score @s jkbw.Player.HasRes if entity @e[tag=jkbw_res_diamond,dx=0,dy=-8,dz=0]
execute as @s[scores={jkbw.Player.HasRes=8..}] run summon item ~ ~ ~ {Age: -32768, PickupDelay: 18, Invulnerable: 1, Item: {id: "diamond", Count: 8, tag: {CanPlaceOn: ["#jkbw:canplaceon"], CanDestroy: ["#jkbw:candestroy"], HideFlags: 28}}, Tags: ["jkbw", "jkbw_extra_diamond", "jkbw_res"]}
execute as @s[scores={jkbw.Player.HasRes=8..}] run kill @e[tag=jkbw_res_diamond,dx=0,dy=-8,dz=0]