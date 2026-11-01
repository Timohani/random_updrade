particle minecraft:ash ~ ~0.5 ~ 0.5 0.5 0.5 0.5 3 force
particle end_rod ~ ~0.4 ~ 0.2 0.2 0.2 0.05 1 force


execute store result score @s random_reseter_entity_sound run random value 1..55

execute if score @s random_reseter_entity_sound matches 13.. run return fail

execute if score @s random_reseter_entity_sound matches 1 run return run playsound minecraft:ambient.underwater.loop master @a ~ ~ ~ 2 2
execute if score @s random_reseter_entity_sound matches 2 run return run playsound minecraft:ambient.underwater.loop.additions master @a ~ ~ ~ 2 2
execute if score @s random_reseter_entity_sound matches 3 run return run playsound minecraft:ambient.underwater.loop.additions.rare master @a ~ ~ ~ 2 2
execute if score @s random_reseter_entity_sound matches 4 run return run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 2 2
execute if score @s random_reseter_entity_sound matches 5 run return run playsound minecraft:ambient.underwater.loop master @a ~ ~ ~ 2 1
execute if score @s random_reseter_entity_sound matches 6 run return run playsound minecraft:ambient.underwater.loop.additions master @a ~ ~ ~ 2 1
execute if score @s random_reseter_entity_sound matches 7 run return run playsound minecraft:ambient.underwater.loop.additions.rare master @a ~ ~ ~ 2 1
execute if score @s random_reseter_entity_sound matches 8 run return run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 2 1

execute if score @s random_reseter_entity_sound matches 9 run return run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0

execute if score @s random_reseter_entity_sound matches 10 run return run playsound minecraft:ambient.basalt_deltas.additions master @a ~ ~ ~ 2 0
execute if score @s random_reseter_entity_sound matches 11 run return run playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 2 0