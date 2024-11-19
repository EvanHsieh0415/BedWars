# 团队升级——实际购买
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "dragon"]}}]}] run function jkbw:play/shop/team/update/once/dragon/white
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "heal"]}}]}] run function jkbw:play/shop/team/update/once/healing/white
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "sharpness"]}}]}] run function jkbw:play/shop/team/update/once/sharpness/white

execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "haste"]}}]}] run function jkbw:play/shop/buy/5/haste/white
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "res"]}}]}] run function jkbw:play/shop/buy/5/res/white
execute as @s[nbt=!{EnderItems: [{tag: {jkbw: ["team", "protection"]}}]}] run function jkbw:play/shop/buy/5/protect/white