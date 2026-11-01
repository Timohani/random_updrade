tellraw @a [{text:"Random Upgrade DataPack ","color":"#73ffc2"},{"text":"v1.4.9","color":"#739aff"}]

# No trigger messages in chat
gamerule send_command_feedback false

# Level scores
scoreboard objectives add lvl_strength dummy "Уровень Силы"
scoreboard objectives add lvl_speed dummy "Уровень Скорости"
scoreboard objectives add lvl_health dummy "Уровень Здоровья"
scoreboard objectives add lvl_dig dummy "Уровень Спешки"

# Triggers
scoreboard objectives add .menu trigger "Открыть Меню RPG"
scoreboard objectives add tg_up_str trigger "Качать Силу"
scoreboard objectives add tg_up_spd trigger "Качать Скорость"
scoreboard objectives add tg_up_hp trigger "Качать Здоровье"
scoreboard objectives add tg_up_dig trigger "Качать Спешку"

# ID scores
scoreboard objectives add rpg_id dummy
scoreboard objectives add rpg_next_id dummy
execute unless score #global rpg_next_id matches 1.. run scoreboard players set #global rpg_next_id 1

# Restore attributes check
scoreboard objectives add rpg_deaths deathCount
scoreboard objectives add time_since_death custom:time_since_death


# Math scores
scoreboard objectives add rpg_calc dummy

scoreboard players set #four rpg_calc 4
scoreboard players set #ten rpg_calc 10
scoreboard players set #fourteen rpg_calc 14
scoreboard players set #seven_hundred rpg_calc 700

scoreboard objectives add rpg_timer dummy

# Loading the chest chunk
forceload add -16 -16 16 16

# Speed abilities
scoreboard objectives add height dummy
scoreboard objectives add walk custom:walk_one_cm
scoreboard objectives add sprint custom:sprint_one_cm

scoreboard objectives add sprint_save.timer dummy
scoreboard objectives add sprint_save.walk custom:walk_one_cm
scoreboard objectives add sprint_save.sprint custom:sprint_one_cm
scoreboard objectives add sprint_save.crouch custom:crouch_one_cm

scoreboard objectives add random_cool_down_sound dummy

# Load the world craft
scoreboard objectives add is_created_skip_craft dummy
scoreboard objectives add .show_resetitem_ingredients trigger

scoreboard objectives add .menu trigger
scoreboard objectives add tg_reset_str trigger
scoreboard objectives add tg_reset_spd trigger
scoreboard objectives add tg_reset_hp trigger
scoreboard objectives add tg_reset_dig trigger

scoreboard objectives add random_reseter_entity_sound dummy
scoreboard objectives add reseter_remove.temp dummy
scoreboard objectives add reseter_usages dummy

# Person level
scoreboard objectives add base_lvl dummy
scoreboard objectives modify base_lvl displayname {"text":"Level","color":"green"}
scoreboard objectives setdisplay below_name base_lvl

# Inhibitor
scoreboard objectives add .show_inhibitor_ingredients trigger

# Teams
team add strengthman
team add speedman
team add healthman
team add digman
team add balanceman
team modify strengthman color yellow
team modify speedman color aqua
team modify healthman color red
team modify digman color green
team modify balanceman color light_purple

scoreboard objectives add max_lvl dummy
scoreboard objectives add calc_team dummy
scoreboard objectives add calc_team.temp dummy

scoreboard objectives add newest_lvl dummy


scoreboard objectives add max_reward_lvl_strength dummy
scoreboard objectives add max_reward_lvl_speed dummy
scoreboard objectives add max_reward_lvl_health dummy
scoreboard objectives add max_reward_lvl_dig dummy