scoreboard players set @s tg_up_dig 0

execute at @s unless dimension minecraft:overworld run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 1
execute at @s unless dimension minecraft:overworld run return run title @s actionbar {"text":"Нельзя использовать улучшения в других мирах!","color":"red"}

data remove storage random_upgrade:temp ReqItem

execute as @e[tag=rpg_player_data] if score @s rpg_id = @p rpg_id run data modify storage random_upgrade:temp ReqItem set from entity @s data.DigItem

execute run function random_upgrade:upgrade/verify/verify_dig with storage random_upgrade:temp
