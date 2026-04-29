execute at @a[scores={buy_end_crate=1..}] run scoreboard players reset @s buy_end_crate
execute if score @s eco_balance matches 12500.. run give @s purple_shulker_box[container_loot={loot_table:"chests/end_city_treasure"},custom_name={"text":"End Crate","color":"#7017ff","bold":true,"italic":false}]
execute if score @s eco_balance matches 12500.. run scoreboard players remove @s eco_balance 12500
execute if score @s eco_balance matches 12500.. run tellraw @s {"text":"You just bought a End Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 12500.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}