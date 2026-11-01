execute if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:prismarine_crystals",count:20}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:quartz",count:30}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:copper_grate",count:5}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:copper_bulb",count:10}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:copper_bars",count:64}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:diamond_block",count:10}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:iron_block",count:40}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:netherite_ingot",count:8}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:redstone_block",count:15}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:lightning_rod",count:2}}] run function random_upgrade:abilities/inhibitor/craft