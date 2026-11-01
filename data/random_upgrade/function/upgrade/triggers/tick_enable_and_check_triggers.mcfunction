# Включаем триггеры КАЖДЫЙ ТИК для всех игроков на сервере
execute as @a run scoreboard players enable @s .menu
execute as @a run scoreboard players enable @s tg_up_str
execute as @a run scoreboard players enable @s tg_up_spd
execute as @a run scoreboard players enable @s tg_up_hp
execute as @a run scoreboard players enable @s tg_up_dig

execute as @a run scoreboard players enable @s tg_reset_str
execute as @a run scoreboard players enable @s tg_reset_spd
execute as @a run scoreboard players enable @s tg_reset_hp
execute as @a run scoreboard players enable @s tg_reset_dig

execute as @a run scoreboard players enable @s .show_resetitem_ingredients
execute as @a run scoreboard players enable @s .show_inhibitor_ingredients

# Проверяем нажатия кнопок (выполняется мгновенно при клике)
execute as @a[scores={.menu=1..}] at @s as @e[type=marker,tag=rpg_player_data] if score @s rpg_id = @p rpg_id run function random_upgrade:upgrade/triggers/prepare_show_menu
execute as @a[scores={tg_up_str=7979}] at @s run function random_upgrade:upgrade/triggers/try/try_upgrade_str
execute as @a[scores={tg_up_spd=7979}] at @s run function random_upgrade:upgrade/triggers/try/try_upgrade_spd
execute as @a[scores={tg_up_hp=7979}] at @s run function random_upgrade:upgrade/triggers/try/try_upgrade_hp
execute as @a[scores={tg_up_dig=7979}] at @s run function random_upgrade:upgrade/triggers/try/try_upgrade_dig

execute as @a[scores={.show_resetitem_ingredients=1..}] at @s run function random_upgrade:upgrade/triggers/show_resetitem_ingredients with storage random_upgrade:world

execute as @a[scores={tg_reset_str=7979}] at @s run return run function random_upgrade:upgrade/skip/try/reset_str
execute as @a[scores={tg_reset_spd=7979}] at @s run return run function random_upgrade:upgrade/skip/try/reset_spd
execute as @a[scores={tg_reset_hp=7979}] at @s run return run function random_upgrade:upgrade/skip/try/reset_hp
execute as @a[scores={tg_reset_dig=7979}] at @s run return run function random_upgrade:upgrade/skip/try/reset_dig

execute as @a[scores={.show_inhibitor_ingredients=1..}] run function random_upgrade:abilities/inhibitor/ingredients