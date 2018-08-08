#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#Ability
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^1.4 {Tags:[frost,wizardry-entity],Invisible:1b,NoGravity:1b,Small:1b}
execute anchored eyes positioned ^ ^ ^1.4 store result entity @e[limit=1,distance=..1,tag=frost] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute anchored eyes positioned ^ ^ ^1.4 store result entity @e[limit=1,distance=..1,tag=frost] Rotation[1] float 1 run data get entity @s Rotation[1] 1
scoreboard players add @s[advancements={wizardry:ice_spikes=true}] StatsFrostBeam 1

#Consum
scoreboard players remove @s IceEssence 5