execute at @a[scores={buy_ancient_city_crate=1..}] run scoreboard players reset @s buy_ancient_city_crate
execute if score @s eco_balance matches 25000.. run give @s blue_shulker_box[container_loot={loot_table:"chests/ancient_city"},custom_name={"text":"Ancient City Crate","color":"dark_blue","bold":true,"italic":false}]
execute if score @s eco_balance matches 25000.. run scoreboard players remove @s eco_balance 25000
execute if score @s eco_balance matches 25000.. run tellraw @s {"text":"You just bought a Ancient City Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 25000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}