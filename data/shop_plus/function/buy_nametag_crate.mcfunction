execute at @a[scores={buy_nametag_crate=1..}] run scoreboard players reset @s buy_nametag_crate
execute if score @s eco_balance matches 100000.. run give @s light_gray_shulker_box[container_loot={loot_table:"shop_plus:nametag"},custom_name={"text":"Nametag Crate","color":"#3f3b35","bold":true,"italic":false}]
execute if score @s eco_balance matches 100000.. run scoreboard players remove @s eco_balance 100000
execute if score @s eco_balance matches 100000.. run tellraw @s {"text":"You just bought a Nametag Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 100000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}