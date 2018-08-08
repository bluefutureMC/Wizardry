#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
summon minecraft:armor_stand ~ ~ ~ {Tags:[space-portal-prog,wizardry-entity],Invisible:1b,NoGravity:1b,Marker:1b}
execute store result entity @e[tag=space-portal-prog,limit=1,distance=..1] Rotation[0] float 1 run data get entity @s Rotation[0] 1
scoreboard players set @s WizardrySpell 10

#Consum
scoreboard players remove @s SpaceEssence 5