#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
fill ~1 ~2 ~1 ~-1 ~2 ~-1 minecraft:ice replace #wizardry:noclip
fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 minecraft:ice replace #wizardry:noclip
fill ~2 ~-1 ~1 ~2 ~1 ~-1 minecraft:ice replace #wizardry:noclip
fill ~-2 ~-1 ~1 ~-2 ~1 ~-1 minecraft:ice replace #wizardry:noclip
fill ~-1 ~-1 ~2 ~1 ~1 ~2 minecraft:ice replace #wizardry:noclip
fill ~-1 ~-1 ~-2 ~1 ~1 ~-2 minecraft:ice replace #wizardry:noclip
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[frozen-shield,wizardry-entity]}

#Consum
scoreboard players remove @s IceEssence 10