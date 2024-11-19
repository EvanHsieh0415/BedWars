function jkbw:load/init/remove
function jkbw:load/settings/menu/lang_bubble
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n选择你的语言\nChoose your language\n\n",{"selector":"@e[type=marker,tag=jkbw_lang1,limit=1]","hoverEvent":{"action":"show_text","value":""},"clickEvent":{"action":"run_command","value":"/function jkbw:lang/_zh_cn"}},"  ",{"selector":"@e[type=marker,tag=jkbw_lang2,limit=1]","hoverEvent":{"action":"show_text","value":""},"clickEvent":{"action":"run_command","value":"/function jkbw:lang/_en_us"}}]
kill @e[type=marker,tag=jkbw_lang]