execute if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:honeycomb",count:10}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:golden_apple",count:5}}] \
if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:golden_carrot",count:1}}] run function random_upgrade:abilities/saturation_honeycomb/craft