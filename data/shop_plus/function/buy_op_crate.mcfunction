execute at @a[scores={buy_op_crate=1..}] run scoreboard players reset @s buy_op_crate
execute if score @s eco_balance matches 7500000.. run give @s white_shulker_box[container_loot={loot_table:"shop_plus:op"},custom_name={"text":"Op Crate","color":"white","bold":true,"italic":false}]
execute if score @s eco_balance matches 7500000.. run scoreboard players remove @s eco_balance 7500000
execute if score @s eco_balance matches 7500000.. run tellraw @s {"text":"You just bought a Op Crate!","color":"green","bold":true}
execute unless score @s eco_balance matches 7500000.. run tellraw @s {"text":"You don't have enough money to buy this crate!","color":"red","bold":true}