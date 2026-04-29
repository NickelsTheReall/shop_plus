execute at @a[scores={buy_bastion_crate=1..}] run scoreboard players reset @s buy_bastion_crate
execute if score @s eco_balance matches 15000.. run give @s black_shulker_box[container_loot={loot_table:"chests/bastion_other"},custom_name={"text":"Bastion Crate","color":"dark_gray","bold":true,"italic":false}]
execute if score @s eco_balance matches 15000.. run scoreboard players remove @s eco_balance 15000
execute if score @s eco_balance matches 15000.. run tellraw @s {"text":"You just bought a Netherite Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 15000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}