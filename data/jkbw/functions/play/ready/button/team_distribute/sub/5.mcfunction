# 5队 12人
execute if score #team_red jkbw.mem matches 12.. as @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["red"]}}]}] unless score @s jkbw.Player.TeamSelect matches 1 run function jkbw:play/ready/button/team_distribute/cannot
execute if score #team_blue jkbw.mem matches 12.. as @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["blue"]}}]}] unless score @s jkbw.Player.TeamSelect matches 2 run function jkbw:play/ready/button/team_distribute/cannot
execute if score #team_green jkbw.mem matches 12.. as @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["green"]}}]}] unless score @s jkbw.Player.TeamSelect matches 3 run function jkbw:play/ready/button/team_distribute/cannot
execute if score #team_yellow jkbw.mem matches 12.. as @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["yellow"]}}]}] unless score @s jkbw.Player.TeamSelect matches 4 run function jkbw:play/ready/button/team_distribute/cannot
execute if score #team_cyan jkbw.mem matches 12.. as @s[nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["cyan"]}}]}] unless score @s jkbw.Player.TeamSelect matches 5 run function jkbw:play/ready/button/team_distribute/cannot