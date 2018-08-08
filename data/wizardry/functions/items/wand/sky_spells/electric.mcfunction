#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
weather thunder 1200
execute at @e[distance=1..10] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[distance=1..10] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[distance=1..10] run summon minecraft:lightning_bolt ~ ~ ~

#Consum
scoreboard players remove @s ElectricEssence 10