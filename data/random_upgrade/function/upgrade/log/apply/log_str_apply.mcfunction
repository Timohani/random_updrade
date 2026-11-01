tellraw @s {"text":"\n\n✨ Уровень Силы успешно повышен!","color":"green"}

playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 1
particle minecraft:block{block_state:"iron_block"} ~ ~0.5 ~ 0.5 0.7 0.5 1 100 force
particle minecraft:ash ~ ~1 ~ 1 0.7 1 1 100 force
particle minecraft:dust{color:[0.5f,0f,0f],scale:1} ~ ~1 ~ 1 0.7 1 1 10 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.7 0.5 0.1 100 force

function random_upgrade:upgrade/sync/roll_for_attribute {attr:"StrItem"}
trigger .menu

execute if score @s lvl_strength > @s max_reward_lvl_strength run function random_upgrade:upgrade/reward/check_rewards {attr:"lvl_strength"}

scoreboard players set @s newest_lvl 1