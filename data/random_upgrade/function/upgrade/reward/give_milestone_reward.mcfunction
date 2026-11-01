# Ставим технический сундук на самом дне мира
setblock 0 -64 0 minecraft:chest replace

# Выбиваем случайный предмет из твоей таблицы в первый слот сундука
loot replace block 0 -64 0 container.0 loot random_upgrade:all_items

# Выводим красивое переведенное название предмета в чат
tellraw @s ["",{"text":"🎉 Юбилейный уровень! Вы получили: ","color":"gold","bold":true},{"nbt":"Items[0].id","block":"0 -64 0","color":"aqua","bold":true}]

# Забираем строковый ID предмета из первого слота
data remove storage random_upgrade:temp RewardItem
data modify storage random_upgrade:temp RewardItem set from block 0 -64 0 Items[0].id

# Стираем сундук, возвращая воздух
setblock 0 -64 0 minecraft:air replace

# Макрос выдачи
function random_upgrade:upgrade/reward/give_item_from_storage with storage random_upgrade:temp

# Эффекты
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2