# Восстанавливаем СИЛУ
scoreboard players operation @s rpg_calc = @s lvl_strength
scoreboard players operation @s rpg_calc *= #fourteen rpg_calc
scoreboard players operation @s rpg_calc -= #seven_hundred rpg_calc
execute store result storage random_upgrade:temp AttrValue float 0.001 run scoreboard players get @s rpg_calc
function random_upgrade:upgrade/apply/modifiers/apply_str_modifier with storage random_upgrade:temp

# Восстанавливаем СКОРОСТЬ
execute store result storage random_upgrade:temp AttrValue double 0.0085714 run scoreboard players get @s lvl_speed
function random_upgrade:upgrade/apply/modifiers/apply_spd_modifier with storage random_upgrade:temp

# Восстанавливаем ЗДОРОВЬЕ
execute store result storage random_upgrade:temp AttrValue double 0.03 run scoreboard players get @s lvl_health
function random_upgrade:upgrade/apply/modifiers/apply_hp_modifier with storage random_upgrade:temp

# Восстанавливаем КОПАНИЕ
execute store result storage random_upgrade:temp AttrValue double 0.18 run scoreboard players get @s lvl_dig
function random_upgrade:upgrade/apply/modifiers/apply_dig_modifier with storage random_upgrade:temp

scoreboard players reset @s rpg_timer