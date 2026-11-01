data remove storage random_upgrade:temp item_id_str
data remove storage random_upgrade:temp item_id_spd
data remove storage random_upgrade:temp item_id_hp
data remove storage random_upgrade:temp item_id_dig

data modify storage random_upgrade:temp item_id_str set from entity @s data.StrItem
data modify storage random_upgrade:temp item_id_spd set from entity @s data.SpdItem
data modify storage random_upgrade:temp item_id_hp set from entity @s data.HpItem
data modify storage random_upgrade:temp item_id_dig set from entity @s data.DigItem

execute as @p run function random_upgrade:upgrade/triggers/show_menu with storage random_upgrade:temp