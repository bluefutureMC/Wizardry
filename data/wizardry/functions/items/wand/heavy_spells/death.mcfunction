#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Invisible:1b,NoGravity:1b,Tags:[life-extractor,wizardry-entity]}
execute store result entity @e[limit=1,sort=nearest,tag=life-extractor] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute store result entity @e[limit=1,sort=nearest,tag=life-extractor] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute as @e[tag=life-extractor] at @s run tp @s ^ ^ ^5
advancement grant @s only wizardry:reaper

#Consum
scoreboard players remove @s DeathEssence 50