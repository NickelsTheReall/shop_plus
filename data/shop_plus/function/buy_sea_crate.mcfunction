execute at @a[scores={buy_sea_crate=1..}] run scoreboard players reset @s buy_sea_crate
execute if score @s eco_balance matches 5000.. run give @s cyan_shulker_box[container_loot={loot_table:"chests/buried_treasure"},custom_name={"text":"Sea Crate","color":"aqua","bold":true,"italic":false}]
execute if score @s eco_balance matches 5000.. run scoreboard players remove @s eco_balance 5000
execute if score @s eco_balance matches 5000.. run tellraw @s {"text":"You just bought a Sea Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 5000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}