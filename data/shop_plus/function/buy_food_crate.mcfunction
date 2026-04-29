execute at @a[scores={buy_food_crate=1..}] run scoreboard players reset @s buy_food_crate
execute if score @s eco_balance matches 2000.. run give @s brown_shulker_box[container_loot={loot_table:"shop_plus:food"},custom_name={"text":"Food Crate","color":"#887023","bold":true,"italic":false}]
execute if score @s eco_balance matches 2000.. run scoreboard players remove @s eco_balance 2000
execute if score @s eco_balance matches 2000.. run tellraw @s {"text":"You just bought a Food Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 2000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}