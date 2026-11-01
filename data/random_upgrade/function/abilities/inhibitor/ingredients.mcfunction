scoreboard players set @s .show_inhibitor_ingredients 0

playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1000 2

tellraw @s ["","\n\n",{"color":"#00aa00","text":"Ингредиенты для создания "},{"color":"#ff55ff","text":"Нейросетевого Ингибитора"},":\n\n",\
{"color":"#55ff55","text":"Echo Shard",hover_event:{action:"show_item",id:"minecraft:echo_shard"}}," x4\n",\
{"color":"#55ff55","text":"Prismarine Crystals",hover_event:{action:"show_item",id:"minecraft:prismarine_crystals"}}," x20\n",\
{"color":"#55ff55","text":"Quartz",hover_event:{action:"show_item",id:"minecraft:quartz"}}," x30\n",\
{"color":"#55ff55","text":"Copper Grate",hover_event:{action:"show_item",id:"minecraft:copper_grate"}}," x5\n",\
{"color":"#55ff55","text":"Copper Bulb",hover_event:{action:"show_item",id:"minecraft:copper_bulb"}}," x10\n",\
{"color":"#55ff55","text":"Copper Bars",hover_event:{action:"show_item",id:"minecraft:copper_bars"}}," x64\n",\
{"color":"#55ff55","text":"Diamond Block",hover_event:{action:"show_item",id:"minecraft:diamond_block"}}," x10\n",\
{"color":"#55ff55","text":"Iron Block",hover_event:{action:"show_item",id:"minecraft:iron_block"}}," x40\n",\
{"color":"#55ff55","text":"Netherite Ingot",hover_event:{action:"show_item",id:"minecraft:netherite_ingot"}}," x8\n",\
{"color":"#55ff55","text":"Redstone Block",hover_event:{action:"show_item",id:"minecraft:redstone_block"}}," x15\n",\
{"color":"#55ff55","text":"Lightning Rod",hover_event:{action:"show_item",id:"minecraft:lightning_rod"}}," x2"]