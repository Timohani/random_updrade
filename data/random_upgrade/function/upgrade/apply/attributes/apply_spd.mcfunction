scoreboard players add @s lvl_speed 1
execute store result storage random_upgrade:temp AttrValue double 0.0085714 run scoreboard players get @s lvl_speed
function random_upgrade:upgrade/apply/modifiers/apply_spd_modifier with storage random_upgrade:temp
function random_upgrade:upgrade/log/apply/log_spd_apply

$clear @s $(ReqItem) 1