#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#Ability
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^1 {Tags:[flame,wizardry-entity],Invisible:1b,NoGravity:1b,Small:1b}
execute anchored eyes positioned ^ ^ ^1 store result entity @e[limit=1,distance=..1,tag=flame] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute anchored eyes positioned ^ ^ ^1 store result entity @e[limit=1,distance=..1,tag=flame] Rotation[1] float 1 run data get entity @s Rotation[1] 1

#Consum
scoreboard players remove @s FireEssence 5