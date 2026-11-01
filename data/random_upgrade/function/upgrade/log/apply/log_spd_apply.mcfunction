tellraw @s {"text":"\n\n✨ Уровень Скорости успешно повышен!","color":"green"}

playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 1
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 0.7 0.5 0.1 100 force
particle minecraft:sculk_soul ~ ~0.5 ~ 0.5 0.7 0.5 1 100 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.7 0.5 0.1 100 force

function random_upgrade:upgrade/sync/roll_for_attribute {attr:"SpdItem"}
trigger .menu

execute if score @s lvl_speed > @s max_reward_lvl_speed run function random_upgrade:upgrade/reward/check_rewards {attr:"lvl_speed"}

scoreboard players set @s newest_lvl 2