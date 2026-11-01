scoreboard players add @s lvl_dig 1
execute store result storage random_upgrade:temp AttrValue double 0.18 run scoreboard players get @s lvl_dig
function random_upgrade:upgrade/apply/modifiers/apply_dig_modifier with storage random_upgrade:temp
function random_upgrade:upgrade/log/apply/log_dig_apply

$clear @s $(ReqItem) 1