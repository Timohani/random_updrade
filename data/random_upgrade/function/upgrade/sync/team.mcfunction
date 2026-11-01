# ====================================================================
# 1. ВЫЧИСЛЯЕМ МАКСИМАЛЬНЫЙ АТРИБУТ (Твой исходный чистый поиск)
# ====================================================================
scoreboard players set @s max_lvl 0

execute if score @s lvl_strength > @s max_lvl run scoreboard players operation @s max_lvl = @s lvl_strength
execute if score @s lvl_speed > @s max_lvl run scoreboard players operation @s max_lvl = @s lvl_speed
execute if score @s lvl_health > @s max_lvl run scoreboard players operation @s max_lvl = @s lvl_health
execute if score @s lvl_dig > @s max_lvl run scoreboard players operation @s max_lvl = @s lvl_dig


# ====================================================================
# 2. ПРОВЕРКА НА ПОГРЕШНОСТЬ ОТНОСИТЕЛЬНО СРЕДНЕГО УРОВНЯ (base_lvl)
# ====================================================================
# Копируем твой средний уровень игрока во временную переменную
scoreboard players operation @s calc_team = @s base_lvl

# Умножаем средний уровень на 13 (задаём планку в +30% от среднего)
# Если хочешь сделать зону баланса чуть уже, поставь 11 (это +10%)
scoreboard players set #scale calc_team 13
scoreboard players operation @s calc_team *= #scale calc_team

# Готовим максимум для честного сравнения (умножаем на 10)
scoreboard players operation @s calc_team.temp = @s max_lvl
scoreboard players set #ten calc_team 10
scoreboard players operation @s calc_team.temp *= #ten calc_team

# СРАВНЕНИЕ: Если раскачанный максимум МЕНЬШЕ ИЛИ РАВЕН среднему уровню с бонусом (rpg_calc),
# значит, максимальный атрибут не смог достаточно сильно "оторваться" от общей массы. Игрок — balanceman!
execute if score @s calc_team.temp <= @s calc_team run return run team join balanceman


# ====================================================================
# 3. ЕСЛИ ОТРЫВ СЕРЬЁЗНЫЙ — ВКЛЮЧАЕТСЯ РАСПРЕДЕЛЕНИЕ ПО КЛАССАМ
# ====================================================================
# Проверки по самому свежему уровню
execute if score @s max_lvl = @s lvl_strength if score @s newest_lvl matches 1 run return run team join strengthman
execute if score @s max_lvl = @s lvl_speed if score @s newest_lvl matches 2 run return run team join speedman
execute if score @s max_lvl = @s lvl_health if score @s newest_lvl matches 3 run return run team join healthman
execute if score @s max_lvl = @s lvl_dig if score @s newest_lvl matches 4 run return run team join digman

# Базовый фоллбэк
execute if score @s max_lvl = @s lvl_strength run return run team join strengthman
execute if score @s max_lvl = @s lvl_speed run return run team join speedman
execute if score @s max_lvl = @s lvl_health run return run team join healthman
execute if score @s max_lvl = @s lvl_dig run return run team join digman
