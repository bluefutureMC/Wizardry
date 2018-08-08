#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
summon minecraft:armor_stand ~ ~5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:[black-hole,wizardry-entity]}
advancement grant @s only wizardry:blackhole

#Consum
scoreboard players remove @s SpaceEssence 50