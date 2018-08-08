#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.1

#Ability
summon minecraft:armor_stand ~ ~-2 ~2 {Tags:[ice-spike,wizardry-entity],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1543,Unbreakable:1b}}],NoGravity:1b,Pose:{Head:[35.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ ~-2 ~-2 {Tags:[ice-spike,wizardry-entity],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1543,Unbreakable:1b}}],NoGravity:1b,Pose:{Head:[35.0f,180.0f,0.0f]}}
summon minecraft:armor_stand ~2 ~-2 ~ {Tags:[ice-spike,wizardry-entity],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1543,Unbreakable:1b}}],NoGravity:1b,Pose:{Head:[35.0f,270.0f,0.0f]}}
summon minecraft:armor_stand ~-2 ~-2 ~ {Tags:[ice-spike,wizardry-entity],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1543,Unbreakable:1b}}],NoGravity:1b,Pose:{Head:[35.0f,90.0f,0.0f]}}
execute as @e[tag=ice-spike,type=armor_stand] at @s run tp @s ~ ~1.3 ~
execute as @e[tag=!wizardry-entity,distance=0.5..3,type=!stray] run tag @s add push-ice
execute as @e[tag=!wizardry-entity,distance=0.5..3,type=!stray] run function wizardry:utility/damage1
advancement grant @s only wizardry:ice_spikes

#Consum
scoreboard players remove @s IceEssence 20