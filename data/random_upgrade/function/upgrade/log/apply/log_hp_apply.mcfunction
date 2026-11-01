tellraw @s {"text":"\n\n✨ Уровень Здоровья успешно повышен!","color":"green"}

playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
particle minecraft:dust{color:[0.5f,0f,0f],scale:1} ~ ~1 ~ 1 0.7 1 1 100 force
particle minecraft:heart ~ ~0.5 ~ 0.8 0.7 0.8 1 100 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.7 0.5 0.1 100 force

function random_upgrade:upgrade/sync/roll_for_attribute {attr:"HpItem"}
trigger .menu

execute if score @s lvl_health > @s max_reward_lvl_health run function random_upgrade:upgrade/reward/check_rewards {attr:"lvl_health"}

scoreboard players set @s newest_lvl 3