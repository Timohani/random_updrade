attribute @s minecraft:attack_damage base set 1
attribute @s minecraft:movement_speed base set 0.07
attribute @s minecraft:max_health base set 8.0
attribute @s minecraft:block_break_speed base set 0.1

function random_upgrade:upgrade/sync/restore_attributes

function random_upgrade:abilities/speed/step/attribute

# Inhibitor check
execute if items entity @s container.* resin_brick[custom_data={inhibitor:1b}] run function random_upgrade:abilities/inhibitor/attribute_modifier
execute unless items entity @s container.* resin_brick[custom_data={inhibitor:1b}] run function random_upgrade:abilities/inhibitor/attribute_reset