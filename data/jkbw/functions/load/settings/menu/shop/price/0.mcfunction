tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"translate":"block.minecraft.shulker_box"}," 0:\n",{"storage":"jk:bw","nbt":"txt.item.shop.trap.name"},":\n1: ",{"text":"[","color":"green"},{"storage":"jk:bw","nbt":"txt.display.res_mode1","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #trap1 jkbw.mem "}},{"text":"]","color":"green"},"  ",{"text":"[","color":"aqua"},{"storage":"jk:bw","nbt":"txt.display.res_mode2","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Etrap1 jkbw.mem "}},{"text":"]","color":"aqua"},"\n2: ",{"text":"[","color":"green"},{"storage":"jk:bw","nbt":"txt.display.res_mode1","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #trap2 jkbw.mem "}},{"text":"]","color":"green"},"  ",{"text":"[","color":"aqua"},{"storage":"jk:bw","nbt":"txt.display.res_mode2","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Etrap2 jkbw.mem "}},{"text":"]","color":"aqua"},"\n3: ",{"text":"[","color":"green"},{"storage":"jk:bw","nbt":"txt.display.res_mode1","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #trap3 jkbw.mem "}},{"text":"]","color":"green"},"  ",{"text":"[","color":"aqua"},{"storage":"jk:bw","nbt":"txt.display.res_mode2","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Etrap3 jkbw.mem "}},{"text":"]","color":"aqua"}]
setblock 10110222 5 10110222 white_shulker_box[facing=north]{Items: [{Slot: 0b, id: "red_stained_glass_pane", Count: 1b, tag: {jkbw: ["shop"]}}, {Slot: 1b, id: "white_stained_glass_pane", Count: 1b, tag: {display: {Lore: ['""', '""']}, jkbw: ["shop", "compass"]}}, {Slot: 2b, id: "light_blue_stained_glass_pane", Count: 1b, tag: {jkbw: ["shop"], display: {Lore: ['""', '""', '""', '""', '""', '""', '""']}}}, {Slot: 3b, id: "light_blue_stained_glass_pane", Count: 1b, tag: {jkbw: ["shop"], display: {Lore: ['""', '""', '""', '""', '""', '""', '""']}}}, {Slot: 4b, id: "lime_stained_glass_pane", Count: 1b, tag: {jkbw: ["shop"], display: {Lore: ['""']}}}, {Slot: 5b, id: "gray_stained_glass", Count: 1b, tag: {jkbw: ["shop"]}}, {Slot: 6b, id: "gray_stained_glass", Count: 1b, tag: {jkbw: ["shop"]}}, {Slot: 7b, id: "gray_stained_glass", Count: 1b, tag: {jkbw: ["shop"]}}, {Slot: 8b, id: "player_head", Count: 1b, tag: {jkbw: ["shop", "gui", "0"], SkullOwner: {Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYxMzNlOTE5MTlkYjBhY2VmZGMyNzJkNjdmZDg3YjRiZTg4ZGM0NGE5NTg5NTg4MjQ0NzRlMjFlMDZkNTNlNiJ9fX0="}]}, Id: [I; 1, 1, 1, 1]}}}, {Slot: 9b, id: "white_wool", Count: 1b, tag: {jkbw: ["shop", "gui", "1"]}}, {Slot: 10b, id: "iron_sword", Count: 1b, tag: {HideFlags: 63, jkbw: ["shop", "gui", "2"]}}, {Slot: 11b, id: "tnt", Count: 1b, tag: {jkbw: ["shop", "gui", "3"]}}, {Slot: 12b, id: "chorus_fruit", Count: 1b, tag: {jkbw: ["shop", "gui", "4"]}}, {Slot: 13b, id: "diamond_chestplate", Count: 1b, tag: {HideFlags: 63, jkbw: ["shop", "gui", "5"]}}, {Slot: 14b, id: "tripwire_hook", Count: 1b, tag: {jkbw: ["shop", "gui", "6"]}}, {Slot: 17b, id: "ender_eye", Count: 1b, tag: {jkbw: ["shop", "gui", "-1"]}}, {Slot: 18b, id: "golden_sword", Count: 1b, tag: {HideFlags: 63, jkbw: ["shop", "gui", "7"]}}, {Slot: 19b, id: "golden_chestplate", Count: 1b, tag: {HideFlags: 63, jkbw: ["shop", "gui", "8"]}}, {Slot: 20b, id: "potion", Count: 1b, tag: {HideFlags: 63, Potion: "water", jkbw: ["shop", "gui", "9"]}}, {Slot: 23b, id: "tripwire_hook", Count: 1b, tag: {HideFlags: 28, jkbw: ["shop"]}}, {Slot: 24b, id: "feather", Count: 1b, tag: {HideFlags: 28, jkbw: ["shop"]}}, {Slot: 25b, id: "redstone_torch", Count: 1b, tag: {HideFlags: 28, jkbw: ["shop"]}}, {Slot: 26b, id: "iron_pickaxe", Count: 1b, tag: {HideFlags: 63, jkbw: ["shop"]}}]}
execute positioned 10110222 1 10110222 run function jkbw:load/settings/menu/shop/refresh
