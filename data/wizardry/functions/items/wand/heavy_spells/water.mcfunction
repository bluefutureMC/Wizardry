#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
effect give @s minecraft:water_breathing 60 0
advancement grant @s only wizardry:scuba_breath

#Consum
scoreboard players remove @s WaterEssence 20