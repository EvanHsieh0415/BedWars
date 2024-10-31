# 团队陷阱
$execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "is_trap"]}}]}] run function jkbw:play/shop/team/trap/main {team:$(team), item:is_trap}
$execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "defend"]}}]}] run function jkbw:play/shop/team/trap/main {team:$(team), item:defend}
$execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "alarm"]}}]}] run function jkbw:play/shop/team/trap/main {team:$(team), item:alarm}
$execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "hard_mining"]}}]}] run function jkbw:play/shop/team/trap/main {team:$(team), item:mining}
