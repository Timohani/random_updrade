scoreboard players add @s lvl_strength 1
scoreboard players operation @s rpg_calc = @s lvl_strength

scoreboard players operation @s rpg_calc *= #fourteen rpg_calc
scoreboard players operation @s rpg_calc -= #seven_hundred rpg_calc

execute store result storage random_upgrade:temp AttrValue float 0.001 run scoreboard players get @s rpg_calc

function random_upgrade:upgrade/apply/modifiers/apply_str_modifier with storage random_upgrade:temp
function random_upgrade:upgrade/log/apply/log_str_apply

$clear @s $(ReqItem) 1