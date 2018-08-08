#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
effect give @e[distance=..7,type=zombie_villager] minecraft:levitation 5 0 true
effect give @e[distance=..7,type=witch] minecraft:levitation 5 0 true
effect give @e[distance=..7,type=zombie_pigman] minecraft:levitation 5 0 true
effect give @e[distance=..7,type=zombie_horse] minecraft:levitation 5 0 true
tag @e[distance=..7,type=zombie_villager] add cure
tag @e[distance=..7,type=zombie_pigman] add cure
tag @e[distance=..7,type=witch] add cure
tag @e[distance=..7,type=zombie_horse] add cure
tag @e[distance=..7,type=zombie_villager,nbt={IsBaby:1b}] add cure-baby
tag @e[distance=..7,type=zombie_pigman,nbt={IsBaby:1b}] add cure-baby

#Consum
scoreboard players remove @s LifeEssence 20