# Shared
execute as @a[scores={lvl_speed=1500..,sprint_save.crouch=10..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/fire/add_save_crouch
execute as @a[scores={lvl_speed=1500..,sprint_save.walk=10..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/fire/add_save_walk
execute as @a[scores={lvl_speed=1500..,sprint_save.sprint=10..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/fire/add_save_sprint
execute as @a[scores={lvl_speed=1500..,sprint_save.timer=1..},tag=!inhibited] run scoreboard players remove @s sprint_save.timer 1

# Shared: cool down (10x)
execute as @a[scores={lvl_speed=1500..,sprint_save.timer=1..},tag=!inhibited] at @s if block ~ ~ ~ water run function random_upgrade:abilities/speed/fire/cool_down

# 1500..2999 lvl
execute as @a[scores={lvl_speed=1500..2999,sprint_save.timer=500..},tag=!inhibited] at @s run particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.1 10 force
execute as @a[scores={lvl_speed=1500..2999,sprint_save.timer=1000..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/fire/magma

# 3000..4999 lvl
execute as @a[scores={lvl_speed=3000..4999,sprint_save.timer=500..749},tag=!inhibited] at @s run particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.1 10 force
execute as @a[scores={lvl_speed=3000..4999,sprint_save.timer=750..},tag=!inhibited] at @s run particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.3 10 force
execute as @a[scores={lvl_speed=3000..4999,sprint_save.timer=750..},tag=!inhibited] at @s run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.6 0.3 0.1 10 force
execute as @a[scores={lvl_speed=3000..4999,sprint_save.timer=1000..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/fire/magma_plus

# 5000+ lvl
execute as @a[scores={lvl_speed=5000..,sprint_save.timer=500..},tag=!inhibited] at @s run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.6 0.3 0.1 10 force
execute as @a[scores={lvl_speed=5000..,sprint_save.timer=750..},tag=!inhibited] at @s run particle end_rod ~ ~0.5 ~ 0.3 0.6 0.3 0.1 10 force
execute as @a[scores={lvl_speed=5000..,sprint_save.timer=1000..},tag=!inhibited] at @s run function random_upgrade:abilities/speed/fire/magma_plus_blackstone