execute at @a[scores={buy_piglin_crate=1..}] run scoreboard players reset @s buy_piglin_crate
execute if score @s eco_balance matches 2500.. run give @s orange_shulker_box[container_loot={loot_table:"gameplay/piglin_bartering"},custom_name={"text":"Piglin Crate","color":"gold","bold":true,"italic":false}]
execute if score @s eco_balance matches 2500.. run scoreboard players remove @s eco_balance 2500
execute if score @s eco_balance matches 2500.. run tellraw @s {"text":"You just bought a Piglin Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 2500.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}