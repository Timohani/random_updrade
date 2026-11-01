tellraw @s {"text":"\n\n✨ Уровень Копания успешно повышен!","color":"green"}

playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.7 0.5 1 100 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.7 0.5 0.1 100 force

function random_upgrade:upgrade/sync/roll_for_attribute {attr:"DigItem"}
trigger .menu

execute if score @s lvl_dig > @s max_reward_lvl_dig run function random_upgrade:upgrade/reward/check_rewards {attr:"lvl_dig"}

scoreboard players set @s newest_lvl 4