#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
tag @s add deathSkDis
tag @e[distance=..4,tag=!deathSkDis,nbt={OnGround:1b},type=!item,type=!armor_stand,type=!item_frame,type=!leash_knot,type=!ender_dragon,type=!wither,type=!iron_golem] add death-hilix
execute at @e[tag=death-hilix,distance=..4] run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Small:1b,Tags:[death-hilixer,wizardry-entity]}
tag @s remove deathSkDis

#Consum
scoreboard players remove @s DeathEssence 30