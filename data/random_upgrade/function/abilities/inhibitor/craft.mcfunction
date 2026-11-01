summon item ~ ~ ~ {Item:{id:"resin_brick",count:1,components:{enchantments:{aqua_affinity:1},tooltip_display:{hidden_components:["enchantments","attribute_modifiers"]},custom_data:{inhibitor:1b}, \
\
custom_name:[{"text":"☣","color":"#62f5ac","italic":false,"bold":true},{"text":" Нейросетевой Ингибитор ","color":"#ff72ff","italic":false,"bold":true},{"text":"☣","color":"#62f5ac","italic":false,"bold":true}], \
\
lore:[\
    {"text":""},\
    {"text":"- Электро-механическое устройство дугового реактора.","color":"dark_aqua","italic":false,"bold":true},\
    {"text":"Способно перехватывать и сдерживать энергию","color":"gray","italic":true,"bold":false},\
    {"text":"аномальных био-модификаторов вашего тела, позволяя","color":"gray","italic":true,"bold":false},\
    {"text":"полностью контролировать нестабильные гены.","color":"gray","italic":true,"bold":false},\
    {"text":""},\
    {"text":"🧬 Гены подавлены на 80%","color":"red","italic":false,"bold":true},\
    {"text":""}\
\
],max_stack_size:1}}}


particle dust{scale:4,color:[1,0.1,0.1]} ~ ~ ~ 1 1 1 0.5 10
particle end_rod ~ ~ ~ 1 1 1 0.5 100 force

playsound minecraft:block.smithing_table.use master @a ~ ~ ~ 5 0
playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 5 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 2


kill @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:prismarine_crystals",count:20}}]

kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:quartz",count:30}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:copper_grate",count:5}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:copper_bulb",count:10}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:copper_bars",count:64}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:diamond_block",count:10}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:iron_block",count:40}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:netherite_ingot",count:8}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:redstone_block",count:15}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:lightning_rod",count:2}}]

kill @s