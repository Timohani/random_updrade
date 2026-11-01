summon item ~ ~ ~ {Item:{id:"honeycomb",count:1,components:{max_stack_size:20,custom_name:{"text":"Сытные Соты","color":"gold","bold":true,"italic":false},food:{can_always_eat:true,nutrition:20,saturation:20},consumable:{on_consume_effects:[{type:"apply_effects",effects:[{id:"instant_health",amplifier:1,duration:8},{id:"saturation",amplifier:49,duration:100},{id:"saturation",amplifier:0,duration:1200},{id:"absorption",amplifier:1,duration:200}]}],consume_seconds:5,sound:"entity.illusioner.prepare_mirror"},enchantments:{aqua_affinity:1},tooltip_display:{hidden_components:["enchantments","attribute_modifiers"]}}}}


particle falling_honey ~ ~1 ~ 0.8 0.5 0.8 0.5 50 force
particle dust_plume ~ ~ ~ 0.3 0.3 0.3 0.1 50 force
particle item_cobweb ~ ~ ~ 0.3 0.3 0.3 0.1 50 force

playsound minecraft:entity.bee.sting master @a ~ ~ ~ 2 0
playsound minecraft:item.honeycomb.wax_on master @a ~ ~ ~ 2 1
playsound minecraft:item.golden_dandelion.use master @a ~ ~ ~ 2 1


kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:honeycomb",count:10}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:golden_apple",count:5}}]
kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:golden_carrot",count:1}}]

kill @s