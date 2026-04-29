execute at @a[scores={buy_opfood_crate=1..}] run scoreboard players reset @s buy_opfood_crate
execute if score @s eco_balance matches 45000.. run give @s yellow_shulker_box[container_loot={loot_table:"shop_plus:opfood"},custom_name={"text":"Op Food Crate","color":"yellow","bold":true,"italic":false}]
execute if score @s eco_balance matches 45000.. run scoreboard players remove @s eco_balance 45000
execute if score @s eco_balance matches 45000.. run tellraw @s {"text":"You just bought a Op Food Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 45000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}