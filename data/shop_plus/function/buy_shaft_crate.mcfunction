execute at @a[scores={buy_shaft_crate=1..}] run scoreboard players reset @s buy_shaft_crate
execute if score @s eco_balance matches 80000.. run give @s brown_shulker_box[container_loot={loot_table:"chests/abandoned_mineshaft"},custom_name={"text":"Shaft Crate","color":"#996f31","bold":true,"italic":false}]
execute if score @s eco_balance matches 80000.. run scoreboard players remove @s eco_balance 80000
execute if score @s eco_balance matches 80000.. run tellraw @s {"text":"You just bought a shaft Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 80000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}