# Копируем текущий уровень игрока во временную переменную
$scoreboard players operation @s rpg_calc = @s $(attr)

# Делаем остаток от деления на 10
scoreboard players operation @s rpg_calc %= #ten rpg_calc

# Если остаток равен 0, значит уровень кратен 10. Выдаем награду
$execute if score @s rpg_calc matches 0 run scoreboard players operation @s max_reward_$(attr) = @s $(attr)
execute if score @s rpg_calc matches 0 run function random_upgrade:upgrade/reward/give_milestone_reward