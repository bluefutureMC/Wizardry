#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#Ability
effect give @s minecraft:levitation 20 254 true
effect give @s minecraft:slow_falling 20 254 true
effect give @s minecraft:jump_boost 20 3 true
tag @s add cloud-walker

#Consum
scoreboard players remove @s AirEssence 10