execute as @s[tag=jkbw_button_res_mode] run function jkbw:play/ready/button/res_mode/update__
execute as @s[tag=jkbw_button_res_rate] run function jkbw:play/ready/button/res_rate/update__
execute as @s[tag=jkbw_button_attack_speed] run function jkbw:play/ready/button/attack_speed/update
execute as @s[tag=jkbw_button_team_count] run function jkbw:play/ready/button/team_count/update__
execute as @s[tag=jkbw_button_team_distribute] run function jkbw:play/ready/button/team_distribute/update
execute as @s[tag=jkbw_button_bed_type] run function jkbw:play/ready/button/bed_type/update__
execute as @s[tag=jkbw_button_chunk] run function jkbw:play/ready/button/chunk
execute as @s[tag=jkbw_button_chunk1] run function jkbw:play/ready/button/chunk1

execute on target run effect give @s glowing 1 0 true
data remove entity @s interaction