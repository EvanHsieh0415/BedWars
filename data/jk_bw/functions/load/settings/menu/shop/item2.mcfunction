kill @e[tag=jk_bw_shop_item2,distance=..6]
kill @e[tag=jk_bw_shop_item2_point,distance=..6]
summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,Tags:["jk_bw_shop_item2_point","jk_bw"],Passengers:[{id:"chest_minecart",CustomDisplayTile:1b,DisplayState:{Name:"redstone_block"},DisplayOffset:5,CustomName:'{"text":"特殊物品","color":"red","bold":true}',CustomNameVisible:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Tags:["jk_bw_shop_item2","jk_bw","jk_bw_shop"]}]}
team join jk_bw_npc @e[tag=jk_bw_shop_item2]