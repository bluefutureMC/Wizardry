#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#Ability
summon minecraft:armor_stand ~ ~1 ~ {Tags:[space-disk,wizardry-entity],Invisible:1b,NoGravity:1b,Marker:1b,Small:1b}
summon minecraft:armor_stand ~ ~1 ~ {Tags:[space-disk-hill,wizardry-entity],Invisible:1b,NoGravity:1b,Marker:1b,Small:1b}
execute positioned ~ ~1 ~ store result entity @e[tag=space-disk,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute positioned ~ ~1 ~ store result entity @e[tag=space-disk,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1] 1
scoreboard players set @s WizardrySpell 20

#Consum
scoreboard players remove @s SpaceEssence 5