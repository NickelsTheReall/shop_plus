execute at @a[scores={buy_saturation=1..}] run scoreboard players reset @s buy_saturation
execute if score @s eco_balance matches 7500.. run give @s splash_potion[potion_contents={custom_color:16571731,custom_effects:[{id:"minecraft:saturation",amplifier:255,duration:12000}]},minecraft:custom_name="Splash potion of Saturation"]
execute if score @s eco_balance matches 7500.. run scoreboard players remove @s eco_balance 7500
execute if score @s eco_balance matches 7500.. run tellraw @s {"text":"You just bought a Splash Potion of Saturation!","color":"green","bold":true}
execute unless score @s eco_balance matches 7500.. run tellraw @s {"text":"You don't have enough money to buy this Potion!","color":"red","bold":true}