# Init new players
execute as @a[tag=!init_player,limit=1] run function random_upgrade:upgrade/sync/init_player

scoreboard players add *server rpg_timer 1
execute if score *server rpg_timer matches 20.. run function random_upgrade:second

function random_upgrade:upgrade/triggers/tick_enable_and_check_triggers

execute as @a[tag=init_player,scores={rpg_deaths=1..,time_since_death=25..}] run function random_upgrade:upgrade/sync/regen_after_death

function random_upgrade:abilities/speed/verify_acceleration
function random_upgrade:abilities/speed/reset_acceleration_values

execute at @a as @e[type=item,distance=..25,nbt={Item:{components:{"minecraft:custom_data":{reseter:1b}}}}] run data merge entity @s {NoGravity:1b}