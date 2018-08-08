#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
effect give @s minecraft:levitation 1 29 true
effect give @s minecraft:jump_boost 20 255 true
tag @s add earth-smash
advancement grant @s only wizardry:ground_pound

#Consum
scoreboard players remove @s EarthEssence 20