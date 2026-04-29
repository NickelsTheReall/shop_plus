execute at @a[scores={buy_enchant_crate=1..}] run scoreboard players reset @s buy_enchant_crate
execute if score @s eco_balance matches 40000.. run give @s light_blue_shulker_box[container_loot={loot_table:"shop_plus:enchant"},custom_name={"text":"Enchant Crate","color":"#5ffff2","bold":true,"italic":false}]
execute if score @s eco_balance matches 40000.. run scoreboard players remove @s eco_balance 40000
execute if score @s eco_balance matches 40000.. run tellraw @s {"text":"You just bought a Enchant Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 40000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}