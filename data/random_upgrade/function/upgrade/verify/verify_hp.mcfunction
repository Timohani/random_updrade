$execute unless items entity @s container.* $(ReqItem) run tellraw @s {"text":"❌ У вас нет нужного предмета для улучшения Здоровья!","color":"red"}

$execute unless items entity @s container.* $(ReqItem) run return run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 1

function random_upgrade:upgrade/apply/attributes/apply_hp with storage random_upgrade:temp