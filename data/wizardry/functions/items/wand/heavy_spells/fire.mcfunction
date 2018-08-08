#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^1 {Tags:[tornado-ball,wizardry-entity],Invisible:1b,NoGravity:1b,Small:1b}
execute anchored eyes positioned ^ ^ ^1 store result entity @e[limit=1,distance=..1,tag=tornado-ball] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute anchored eyes positioned ^ ^ ^1 store result entity @e[limit=1,distance=..1,tag=tornado-ball] Rotation[1] float 1 run data get entity @s Rotation[1] 1
scoreboard players set @s WizardrySpell 10
advancement grant @s only wizardry:fire_tornado

#Consum
scoreboard players remove @s FireEssence 25