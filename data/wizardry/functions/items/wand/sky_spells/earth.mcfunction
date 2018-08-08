#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
tag @s add earthSkDis
execute at @e[tag=!earthSkDis,nbt={OnGround:1b},distance=..10] run clone ~ ~-1 ~ ~ ~-6 ~ ~ ~ ~ replace move
execute as @e[tag=!earthSkDis,nbt={OnGround:1b},distance=..10] at @s run tp @s ~ ~6 ~
execute as @e[tag=!earthSkDis,nbt={OnGround:1b},distance=..10] run effect give @s minecraft:levitation 1 19 true
tag @s remove earthSkDis

#Consum
scoreboard players remove @s EarthEssence 15