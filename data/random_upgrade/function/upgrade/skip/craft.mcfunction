$summon item ~ ~ ~ {Item:{id:"disc_fragment_5",count:1,components:{enchantments:{vanishing_curse:1},custom_data:{reseter:1b},custom_name:[{"text":"-","color":"#7162f5","italic":false,"bold":true,"obfuscated":true},{"text":" Reseter ","color":"#92eff7","italic":false,"bold":true,"obfuscated":false},{"text":"-","color":"#7162f5","italic":false,"bold":true,"obfuscated":true}],lore:[{"text":""},{"text":"- Позволяет сбросить текущий предмет для прокачки аттрибута","color":"#65a9c2","italic":false,"bold":true},{"text":"Не изчезает со временем","color":"gray","italic":false,"bold":true},{"text":""}],max_stack_size:79}},NoGravity:1b,Motion:[0.0,$(y_motion),0.0]}


particle soul ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.3 50 force
particle sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
particle sonic_boom ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
particle end_rod ~ ~ ~ 1 1 1 1.5 250 force

playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 2
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 62 0

execute as @a[distance=..20] run damage @s 1 generic

$kill @e[type=item,distance=..1,limit=1,nbt={Item:{id:"$(CurrentSecondItem)",count:1}}]
kill @s