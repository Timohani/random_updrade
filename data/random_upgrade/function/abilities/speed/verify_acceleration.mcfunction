# Fire
function random_upgrade:abilities/speed/fire/verify_speed_lvl

# Walk on water
execute as @a[scores={lvl_speed=500..,walk=100..},tag=!inhibited] at @s run return run function random_upgrade:abilities/speed/water/check_height
execute as @a[scores={lvl_speed=500..,sprint=10..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/water/check_height