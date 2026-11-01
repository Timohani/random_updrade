scoreboard players set *server rpg_timer 0

execute as @a run function random_upgrade:upgrade/sync/force_sync_attributes

# World // Reseter Craft
execute unless score *server is_created_skip_craft matches 1 run function random_upgrade:upgrade/skip/roll
execute as @a at @s run function random_upgrade:upgrade/skip/check_items with storage random_upgrade:world

# Reseter
execute at @a as @e[type=item,distance=..50,nbt={Item:{components:{"minecraft:custom_data":{reseter:1b}}}}] at @s run function random_upgrade:upgrade/skip/item_particle

execute at @a as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{reseter:1b}}}}] run data merge entity @s {Age:0}

# Inhibitor Craft
execute at @a as @e[type=item,distance=..25,nbt={Item:{id:"minecraft:echo_shard",count:4}}] at @s run function random_upgrade:abilities/inhibitor/check_items

# Saturation Honeycomb Craft
execute at @a as @e[type=item,distance=..25,nbt={Item:{id:"minecraft:golden_dandelion",count:1}}] at @s run function random_upgrade:abilities/saturation_honeycomb/check_items