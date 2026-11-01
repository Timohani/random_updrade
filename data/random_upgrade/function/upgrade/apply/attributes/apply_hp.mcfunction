scoreboard players add @s lvl_health 1
execute store result storage random_upgrade:temp AttrValue double 0.03 run scoreboard players get @s lvl_health
function random_upgrade:upgrade/apply/modifiers/apply_hp_modifier with storage random_upgrade:temp
function random_upgrade:upgrade/log/apply/log_hp_apply

$clear @s $(ReqItem) 1