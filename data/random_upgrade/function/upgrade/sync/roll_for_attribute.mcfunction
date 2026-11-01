setblock 0 -64 0 minecraft:chest replace

data remove storage random_upgrade:temp CurrentLoot

loot replace block 0 -64 0 container.0 loot random_upgrade:all_items

# Копируем текстовый ID предмета из первого слота сундука в storage
data modify storage random_upgrade:temp CurrentLoot set from block 0 -64 0 Items[0].id

# Стираем сундук, возвращая на его место воздух
setblock 0 -64 0 minecraft:air replace

# Переносим чистую строку ID из storage в персональный маркер игрока (в его data)
$execute as @e[tag=rpg_player_data] if score @s rpg_id = @p rpg_id run function random_upgrade:upgrade/sync/translate/get_id {attr:"$(attr)"}