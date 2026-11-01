scoreboard players set @s .menu 0

playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

function random_upgrade:upgrade/sync/base_lvl/count
function random_upgrade:upgrade/sync/team

tellraw @s ["\n\n",{"text":"=== ПРОКАЧКА АТРИБУТОВ ===\n","color":"#cf7dff","bold":true}]


tellraw @s [{"text":"== Уровень игрока: ","color":"aqua"},{"score":{"name":"@s","objective":"base_lvl"},"color":"green"}]

# 1. СИЛА
$tellraw @s [{"text":"💪 ","color":"yellow"},\
{"text":"[+]","color":"dark_green","bold":true,\
"click_event":{"action":"run_command","command":"/trigger tg_up_str set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Улучшить силу","color":"green"}}},\
{"text":" Сила ","color":"#ffd17a"},\
{"score":{"name":"@s","objective":"lvl_strength"},"color":"aqua"},\
{"text":" Предмет: ","color":"dark_gray"},\
{"text":"$(item_id_str)","color":"green",\
"hover_event":{action:"show_item",id:"$(item_id_str)"}},\
{"text":" [✎]","color":"blue","bold":false,\
"click_event":{"action":"run_command","command":"/trigger tg_reset_str set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Сбросить требуемый предмет для прокачки силы","color":"blue"}}}]

# 2. СКОРОСТЬ
$tellraw @s [{"text":"⚡ ","color":"aqua"},\
{"text":"[+]","color":"dark_green","bold":true,\
"click_event":{"action":"run_command","command":"/trigger tg_up_spd set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Улучшить скорость","color":"green"}}},\
{"text":" Скорость ","color":"#83b4ff"},\
{"score":{"name":"@s","objective":"lvl_speed"},"color":"aqua"},\
{"text":" Предмет: ","color":"dark_gray"},\
{"text":"$(item_id_spd)","color":"green",\
"hover_event":{action:"show_item",id:"$(item_id_spd)"}},\
{"text":" [✎]","color":"blue","bold":false,\
"click_event":{"action":"run_command","command":"/trigger tg_reset_spd set 7979"}\
,"hover_event":{"action":"show_text","value":{"text":"Сбросить требуемый предмет для прокачки скорости","color":"blue"}}}]

# 3. ЗДОРОВЬЕ
$tellraw @s [{"text":"❤ ","color":"red"},\
{"text":"[+]","color":"dark_green","bold":true,\
"click_event":{"action":"run_command","command":"/trigger tg_up_hp set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Улучшить здоровье","color":"green"}}},\
{"text":" Здоровье ","color":"#ff7e7e"},\
{"score":{"name":"@s","objective":"lvl_health"},"color":"aqua"},\
{"text":" Предмет: ","color":"dark_gray"},\
{"text":"$(item_id_hp)","color":"green",\
"hover_event":{action:"show_item",id:"$(item_id_hp)"}},\
{"text":" [✎]","color":"blue","bold":false,\
"click_event":{"action":"run_command","command":"/trigger tg_reset_hp set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Сбросить требуемый предмет для прокачки здоровья","color":"blue"}}}]

# 4. СКОРОСТЬ КОПАНИЯ
$tellraw @s [{"text":"⛏ ","color":"green"},\
{"text":"[+]","color":"dark_green","bold":true,\
"click_event":{"action":"run_command","command":"/trigger tg_up_dig set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Улучшить скорость копания","color":"green"}}},\
{"text":" Копание ","color":"#9cff7e"},\
{"score":{"name":"@s","objective":"lvl_dig"},"color":"aqua"},\
{"text":" Предмет: ","color":"dark_gray"},\
{"text":"$(item_id_dig)","color":"green",\
"hover_event":{action:"show_item",id:"$(item_id_dig)"}},\
{"text":" [✎]","color":"blue","bold":false,\
"click_event":{"action":"run_command","command":"/trigger tg_reset_dig set 7979"},\
"hover_event":{"action":"show_text","value":{"text":"Сбросить требуемый предмет для прокачки скорости копания","color":"blue"}}}]