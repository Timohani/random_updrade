scoreboard players set @s tg_reset_dig 0
tag @s remove waiting_for_reset

# Check dimension
execute at @s unless dimension minecraft:overworld run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 1
execute at @s unless dimension minecraft:overworld run return run title @s actionbar {"text":"Нельзя использовать улучшения в других мирах!","color":"red"}

# Check item
execute unless items entity @s container.* disc_fragment_5[custom_data={reseter:1b}] at @s run return run trigger .show_resetitem_ingredients

# Get random number to write off
execute unless entity @s[tag=dig_borrower] run function random_upgrade:upgrade/skip/try/random_price/get_price

# If enough lvl
execute if score @s lvl_dig < @s reseter_remove.temp run tag @s add dig_borrower
execute if score @s lvl_dig >= @s reseter_remove.temp run tag @s remove dig_borrower
execute if entity @s[tag=dig_borrower] run tellraw @s {"text":"Вам не хватает уровня аттрибута для списания!","color":"red"}
execute if entity @s[tag=dig_borrower] run return run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 1

# Reset Item
function random_upgrade:upgrade/sync/roll_for_attribute {attr:"DigItem"}
scoreboard players operation @s lvl_dig -= @s reseter_remove.temp
function random_upgrade:upgrade/skip/try/log/write_off with storage random_upgrade:temp