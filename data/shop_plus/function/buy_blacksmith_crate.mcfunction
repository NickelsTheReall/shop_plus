execute at @a[scores={buy_blacksmith_crate=1..}] run scoreboard players reset @s buy_blacksmith_crate
execute if score @s eco_balance matches 7500.. run give @s light_gray_shulker_box[container_loot={loot_table:"chests/village/village_weaponsmith"},custom_name={"text":"Blacksmith Crate","color":"gray","bold":true,"italic":false}]
execute if score @s eco_balance matches 7500.. run scoreboard players remove @s eco_balance 7500
execute if score @s eco_balance matches 7500.. run tellraw @s {"text":"You just bought a Blacksmith Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 7500.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}