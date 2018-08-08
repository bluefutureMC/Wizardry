#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#Ability
execute anchored eyes run summon minecraft:wither_skull ^ ^-.5 ^1 {Tags:[death-skull],direction:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}
execute anchored eyes run summon minecraft:armor_stand ^ ^-.5 ^2 {Tags:[death-skull-anch,wizardry-entity],Invisible:1b,Marker:1b,NoGravity:1b,Small:1b}
execute as @e[tag=death-skull-anch] at @s positioned ^ ^ ^-1 store result score @e[tag=death-skull,limit=1,distance=..2] PosX run data get entity @s Pos[0] 10
execute as @e[tag=death-skull-anch] at @s positioned ^ ^ ^-1 store result score @e[tag=death-skull,limit=1,distance=..2] PosY run data get entity @s Pos[1] 10
execute as @e[tag=death-skull-anch] at @s positioned ^ ^ ^-1 store result score @e[tag=death-skull,limit=1,distance=..2] PosZ run data get entity @s Pos[2] 10
kill @e[tag=death-skull-anch]
execute as @e[tag=death-skull,limit=1,distance=..3] store result score @s MotionX run data get entity @s Pos[0] 10
execute as @e[tag=death-skull,limit=1,distance=..3] store result score @s MotionY run data get entity @s Pos[1] 10
execute as @e[tag=death-skull,limit=1,distance=..3] store result score @s MotionZ run data get entity @s Pos[2] 10
execute as @e[tag=death-skull,limit=1,distance=..3] run scoreboard players operation @s MotionX -= @s PosX
execute as @e[tag=death-skull,limit=1,distance=..3] run scoreboard players operation @s MotionY -= @s PosY
execute as @e[tag=death-skull,limit=1,distance=..3] run scoreboard players operation @s MotionZ -= @s PosZ
execute as @e[tag=death-skull,limit=1,distance=..3] store result entity @s power[0] double -0.01 run scoreboard players get @s MotionX
execute as @e[tag=death-skull,limit=1,distance=..3] store result entity @s power[1] double -0.01 run scoreboard players get @s MotionY
execute as @e[tag=death-skull,limit=1,distance=..3] store result entity @s power[2] double -0.01 run scoreboard players get @s MotionZ
scoreboard players set @s WizardrySpell 10

#Consum
scoreboard players remove @s DeathEssence 5