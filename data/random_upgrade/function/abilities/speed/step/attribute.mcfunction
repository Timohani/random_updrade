attribute @s step_height modifier remove random_upgrade:step_height

execute if score @s lvl_speed matches 1000..2499 run attribute @s step_height modifier add random_upgrade:step_height 1 add_value
execute if score @s lvl_speed matches 2500..4999 run attribute @s step_height modifier add random_upgrade:step_height 2 add_value
execute if score @s lvl_speed matches 5000.. run attribute @s step_height modifier add random_upgrade:step_height 3 add_value