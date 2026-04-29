execute at @a[scores={buy_xp=1..}] run scoreboard players reset @s buy_xp
execute if score @s eco_balance matches 1000000.. run xp add @s 35 levels
execute if score @s eco_balance matches 1000000.. run scoreboard players remove @s eco_balance 1000000
execute if score @s eco_balance matches 1000000.. run tellraw @s {"text":"You just bought some XP!","color":"green","bold":true}
execute unless score @s eco_balance matches 1000000.. run tellraw @s {"text":"You don't have enough money to buy XP!","color":"red","bold":true}