scoreboard players operation @s rpg_id = #global rpg_next_id

# Спавним маркер на игроке
execute at @s run summon marker ~ ~ ~ {Tags:["rpg_player_data"]}

# Связываем ID игрока и маркера
execute as @e[tag=rpg_player_data,limit=1,sort=nearest] run scoreboard players operation @s rpg_id = @p rpg_id

# ТЕЛЕПОРТИРУЕМ маркер в вечно прогруженный нулевой чанк
execute as @e[tag=rpg_player_data] if score @s rpg_id = @p rpg_id run tp @s 0 0 0

# Увеличиваем счетчик для следующего игрока
scoreboard players add #global rpg_next_id 1

# Генерируем стартовые требования для всех пяти веток
function random_upgrade:upgrade/sync/roll_for_attribute {attr:"StrItem"}
function random_upgrade:upgrade/sync/roll_for_attribute {attr:"SpdItem"}
function random_upgrade:upgrade/sync/roll_for_attribute {attr:"HpItem"}
function random_upgrade:upgrade/sync/roll_for_attribute {attr:"DigItem"}


scoreboard players set @s lvl_dig 0
scoreboard players set @s lvl_health 0
scoreboard players set @s lvl_speed 0
scoreboard players set @s lvl_strength 0

scoreboard players set @s max_reward_lvl_dig 0
scoreboard players set @s max_reward_lvl_health 0
scoreboard players set @s max_reward_lvl_speed 0
scoreboard players set @s max_reward_lvl_strength 0


tag @s add init_player