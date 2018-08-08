#Acient Nether Temple
scoreboard players add @a[nbt={Dimension:-1}] WizardryStruct 1
execute at @a[scores={WizardryStruct=3600..},nbt={Dimension:-1}] run summon armor_stand ~ ~ ~ {Tags:[ANT-spawn,wizardry-entity],Invisible:1b,Small:1b}
execute at @a[scores={WizardryStruct=3600..},nbt={Dimension:-1}] run summon armor_stand ~ ~ ~ {Tags:[ANT-spawn,wizardry-entity],Invisible:1b,Small:1b}
execute at @a[scores={WizardryStruct=3600..},nbt={Dimension:-1}] run spreadplayers ~ ~ 50 100 false @e[tag=ANT-spawn]
execute as @e[tag=ANT-spawn] at @s unless block ~ ~ ~ #wizardry:airs run tp @s ~ ~-1 ~
execute as @e[tag=ANT-spawn] at @s unless block ~ ~-1 ~ netherrack run tp @s ~ ~-1 ~
execute as @e[tag=ANT-spawn] at @s if block ~ ~ ~ #wizardry:airs if block ~ ~-1 ~ netherrack run tag @s add ws-spawn-struct
execute as @e[tag=ANT-spawn,tag=ws-spawn-struct] at @s run function wizardry:structures/acient-nether-temple/spawn
execute as @e[tag=ANT-spawn,tag=ws-spawn-struct] at @s run kill @s
execute as @e[tag=ANT-spawn] at @s if block ~ ~ ~ nether_bricks run kill @s
scoreboard players set @a[scores={WizardryStruct=3600..}] WizardryStruct 0

execute at @e[tag=wsANT] run kill @e[tag=ANT-spawn,distance=..40]