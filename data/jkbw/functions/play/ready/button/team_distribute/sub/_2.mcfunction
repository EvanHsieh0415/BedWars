# 2队 32人
execute if score #team_red jkbw.mem matches 33.. as @r[gamemode=adventure,nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["red"]}}]}] run function jkbw:play/ready/button/team_distribute/cannot
execute if score #team_blue jkbw.mem matches 33.. as @r[gamemode=adventure,nbt={Inventory: [{Slot: 102b, tag: {jkbw: ["blue"]}}]}] run function jkbw:play/ready/button/team_distribute/cannot