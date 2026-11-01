scoreboard players remove @s sprint_save.timer 9
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0 10 force

execute store result score @s random_cool_down_sound run random value 0..5
execute if score @s random_cool_down_sound matches 5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 2