execute at @a[scores={buy_netherite_crate=1..}] run scoreboard players reset @s buy_netherite_crate
execute if score @s eco_balance matches 60000.. run give @s gray_shulker_box[container_loot={loot_table:"shop_plus:netherite"},custom_name={"text":"Netherite Crate","color":"#3f3b35","bold":true,"italic":false}]
execute if score @s eco_balance matches 60000.. run scoreboard players remove @s eco_balance 60000
execute if score @s eco_balance matches 60000.. run tellraw @s {"text":"You just bought a Netherite Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 60000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}