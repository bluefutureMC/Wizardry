#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
tag @e[distance=1..10] add push-back
particle minecraft:cloud ~ ~ ~ 2 2 2 0.5 500
scoreboard players set @s WizardrySpell 20

#Consum
scoreboard players remove @s AirEssence 20