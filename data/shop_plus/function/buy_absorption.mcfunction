execute at @a[scores={buy_absorption=1..}] run scoreboard players reset @s buy_absorption
execute if score @s eco_balance matches 30000.. run give @s splash_potion[potion_contents={custom_color:16252695,custom_effects:[{id:"minecraft:absorption",amplifier:5,duration:12000}]},minecraft:custom_name="Splash potion of Absorption"]
execute if score @s eco_balance matches 30000.. run scoreboard players remove @s eco_balance 30000
execute if score @s eco_balance matches 30000.. run tellraw @s {"text":"You just bought a Splash Potion of Absorption!","color":"green","bold":true}
execute unless score @s eco_balance matches 30000.. run tellraw @s {"text":"You don't have enough money to buy this Potion!","color":"red","bold":true}