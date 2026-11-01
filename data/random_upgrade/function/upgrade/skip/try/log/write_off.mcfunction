$tellraw @s [{"text":"\n\nПредмет для улучшения аттрибута успешно изменён! ","color":"green"},{"text":"Было списано ","color":"dark_aqua"},{"score":{"name":"@s","objective":"reseter_remove.temp"},"color":"aqua"},{"text":" уровней аттрибута из ","color":"dark_aqua"},{"text":"$(reseter_remove)","color":"aqua"},{"text":" возможных.","color":"dark_aqua"}]

playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 15 1
effect give @s darkness 5 0 true
clear @s disc_fragment_5[custom_data={reseter:1b}] 1
scoreboard players add @s reseter_usages 1

trigger .menu