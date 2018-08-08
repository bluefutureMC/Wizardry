#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#Ability
summon minecraft:armor_stand ^ ^ ^2 {Tags:[lightning-orb,wizardry-entity],Invisible:1b,NoGravity:1b,Small:1b}
execute positioned ^ ^ ^2 store result entity @e[limit=1,distance=..1,tag=lightning-orb] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute positioned ^ ^ ^2 store result entity @e[limit=1,distance=..1,tag=lightning-orb] Rotation[1] float 1 run data get entity @s Rotation[1] 1
scoreboard players set @s WizardrySpell 20

#Consum
scoreboard players remove @s ElectricEssence 5