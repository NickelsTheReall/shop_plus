scoreboard players enable @a buy_bastion_crate
execute as @a[scores={buy_bastion_crate=1..}] at @s run function shop_plus:buy_bastion_crate
execute at @a[scores={buy_bastion_crate=1..}] run scoreboard players reset @s buy_bastion_crate

scoreboard players enable @a buy_sea_crate
execute as @a[scores={buy_sea_crate=1..}] at @s run function shop_plus:buy_sea_crate
execute at @a[scores={buy_sea_crate=1..}] run scoreboard players reset @s buy_sea_crate

scoreboard players enable @a buy_piglin_crate
execute as @a[scores={buy_piglin_crate=1..}] at @s run function shop_plus:buy_piglin_crate
execute at @a[scores={buy_piglin_crate=1..}] run scoreboard players reset @s buy_piglin_crate

scoreboard players enable @a buy_end_crate
execute as @a[scores={buy_end_crate=1..}] at @s run function shop_plus:buy_end_crate
execute at @a[scores={buy_end_crate=1..}] run scoreboard players reset @s buy_end_crate

scoreboard players enable @a buy_ancient_city_crate
execute as @a[scores={buy_ancient_city_crate=1..}] at @s run function shop_plus:buy_ancient_city_crate
execute at @a[scores={buy_ancient_city_crate=1..}] run scoreboard players reset @s buy_ancient_city_crate

scoreboard players enable @a buy_shaft_crate
execute as @a[scores={buy_shaft_crate=1..}] at @s run function shop_plus:buy_shaft_crate
execute at @a[scores={buy_shaft_crate=1..}] run scoreboard players reset @s buy_shaft_crate

scoreboard players enable @a buy_nametag_crate
execute as @a[scores={buy_nametag_crate=1..}] at @s run function shop_plus:buy_nametag_crate
execute at @a[scores={buy_nametag_crate=1..}] run scoreboard players reset @s buy_nametag_crate

scoreboard players enable @a buy_opfood_crate
execute as @a[scores={buy_opfood_crate=1..}] at @s run function shop_plus:buy_opfood_crate
execute at @a[scores={buy_opfood_crate=1..}] run scoreboard players reset @s buy_opfood_crate

scoreboard players enable @a buy_enchant_crate
execute as @a[scores={buy_enchant_crate=1..}] at @s run function shop_plus:buy_enchant_crate
execute at @a[scores={buy_enchant_crate=1..}] run scoreboard players reset @s buy_enchant_crate

scoreboard players enable @a buy_netherite_crate
execute as @a[scores={buy_netherite_crate=1..}] at @s run function shop_plus:buy_netherite_crate
execute at @a[scores={buy_netherite_crate=1..}] run scoreboard players reset @s buy_netherite_crate

scoreboard players enable @a buy_food_crate
execute as @a[scores={buy_food_crate=1..}] at @s run function shop_plus:buy_food_crate
execute at @a[scores={buy_food_crate=1..}] run scoreboard players reset @s buy_food_crate

scoreboard players enable @a buy_op_crate
execute as @a[scores={buy_op_crate=1..}] at @s run function shop_plus:buy_op_crate
execute at @a[scores={buy_op_crate=1..}] run scoreboard players reset @s buy_op_crate

scoreboard players enable @a buy_blacksmith_crate
execute as @a[scores={buy_blacksmith_crate=1..}] at @s run function shop_plus:buy_blacksmith_crate
execute at @a[scores={buy_blacksmith_crate=1..}] run scoreboard players reset @s buy_blacksmith_crate



scoreboard players enable @a buy_saturation
execute as @a[scores={buy_saturation=1..}] at @s run function shop_plus:buy_saturation
execute at @a[scores={buy_saturation=1..}] run scoreboard players reset @s buy_saturation

scoreboard players enable @a buy_absorption
execute as @a[scores={buy_absorption=1..}] at @s run function shop_plus:buy_absorption
execute at @a[scores={buy_absorption=1..}] run scoreboard players reset @s buy_absorption



scoreboard players enable @a buy_xp
execute as @a[scores={buy_xp=1..}] at @s run function shop_plus:buy_xp
execute at @a[scores={buy_xp=1..}] run scoreboard players reset @s buy_xp

execute as @a at @s if items entity @s weapon minecraft:breeze_rod[minecraft:custom_data={SpeedRod:1}] run effect give @s minecraft:speed 1 4 true
execute as @a at @s if items entity @s weapon minecraft:blaze_rod[minecraft:custom_data={JumpRod:1}] run effect give @s minecraft:jump_boost 1 6 true
execute as @a at @s if items entity @s weapon minecraft:blaze_rod[minecraft:custom_data={JumpRod:1}] run attribute @s safe_fall_distance base set 10
execute as @a unless items entity @s weapon minecraft:blaze_rod[minecraft:custom_data={JumpRod:1}] run attribute @s safe_fall_distance base set 3

execute as @a at @s if items entity @s weapon.offhand minecraft:breeze_rod[minecraft:custom_data={SpeedRod:1}] run effect give @s minecraft:speed 1 4 true
execute as @a at @s if items entity @s weapon.offhand minecraft:blaze_rod[minecraft:custom_data={JumpRod:1}] run effect give @s minecraft:jump_boost 1 6 true
execute as @a at @s if items entity @s weapon.offhand minecraft:blaze_rod[minecraft:custom_data={JumpRod:1}] run attribute @s safe_fall_distance base set 10
execute as @a unless items entity @s weapon.offhand minecraft:blaze_rod[minecraft:custom_data={JumpRod:1}] run attribute @s safe_fall_distance base set 3

execute as @a at @s if items entity @s weapon minecraft:netherite_sword[item_model="shop_plus_custom_texture_pack:supreme_sword"] run effect give @s minecraft:strength 1 3 true
execute as @a at @s if items entity @s weapon minecraft:netherite_sword[item_model="shop_plus_custom_texture_pack:supreme_sword"] run particle minecraft:falling_lava ~ ~ ~ 1 2 1 1 5 normal

execute as @a at @s if items entity @s weapon.offhand minecraft:netherite_sword[item_model="shop_plus_custom_texture_pack:supreme_sword"] run effect give @s minecraft:strength 1 3 true
execute as @a at @s if items entity @s weapon.offhand minecraft:netherite_sword[item_model="shop_plus_custom_texture_pack:supreme_sword"] run particle minecraft:falling_lava ~ ~ ~ 1 2 1 1 5 normal

recipe give @a shop_plus:jumprod
recipe give @a shop_plus:speedrod
recipe give @a shop_plus:supremesword

execute as @e[type=arrow] at @s unless entity @a[distance=..100] run kill @s