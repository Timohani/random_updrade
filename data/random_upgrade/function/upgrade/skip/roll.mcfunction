setblock 0 -64 1 chest

data remove storage random_upgrade:world CurrentItem

loot replace block 0 -64 1 container.0 loot random_upgrade:all_items
loot replace block 0 -64 1 container.1 loot random_upgrade:all_items

data modify storage random_upgrade:world CurrentFirstItem set from block 0 -64 1 Items[0].id
data modify storage random_upgrade:world CurrentSecondItem set from block 0 -64 1 Items[1].id

scoreboard players set *server is_created_skip_craft 1

setblock 0 -64 1 minecraft:air replace