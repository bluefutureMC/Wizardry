#Destroy
execute unless block ~ ~-1 ~ minecraft:polished_andesite positioned ~ ~-1 ~ run data merge entity @e[type=item,nbt={Item:{id:"minecraft:polished_andesite",Count:1b}},limit=1,distance=..1] {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"[{\"text\":\"Essence Absorber\",\"color\":\"dark_purple\",\"italic\":false}]"},SkullOwner:{Id:"5e6f5493-bf89-45bf-b761-755a98879f94",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmI1Y2ViNWQzZDc1N2FiOTU5MjZmOGZhMjRjYTNmZjM4YzQxNmFjNGM1ODY2N2RlMzc5M2ZmYWFhYjI5In19fQ=="}]}}}}}
execute unless block ~ ~-1 ~ minecraft:polished_andesite run kill @s

#Fire generation
execute if block ~ ~-2 ~ fire unless score @s FireEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=100}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=200}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=300}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=400}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=500}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=600}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=700}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=800}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=900}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=1000}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=1100}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if entity @s[scores={WizardryCooldown=1200}] unless score @s FireEssence matches 50.. run scoreboard players add @s FireEssence 1
execute if block ~ ~-2 ~ fire if score @s WizardryCooldown matches 1200.. run playsound minecraft:block.fire.extinguish block @a ~ ~-2 ~ 1 2
execute if block ~ ~-2 ~ fire if score @s WizardryCooldown matches 1200.. run tag @s add ab-unfire
execute if block ~ ~-2 ~ fire if score @s WizardryCooldown matches 1200.. run setblock ~ ~-2 ~ air
scoreboard players set @s[scores={WizardryCooldown=1200..},tag=ab-unfire] WizardryCooldown 0
tag @s remove ab-unfire

#Water generation
execute if block ~ ~-2 ~ water run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ water if entity @s[scores={WizardryCooldown=200}] unless score @s WaterEssence matches 50.. run scoreboard players add @s WaterEssence 1
execute if block ~ ~-2 ~ water run scoreboard players set @s[scores={WizardryCooldown=200..}] WizardryCooldown 0

#Earth generation
execute if block ~ ~-2 ~ #wizardry:crops unless score @s EarthEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=100}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=200}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=300}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=400}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=500}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=600}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=700}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=800}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=900}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=1000}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=1100}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if entity @s[scores={WizardryCooldown=1200}] unless score @s EarthEssence matches 50.. run scoreboard players add @s EarthEssence 1
execute if block ~ ~-2 ~ #wizardry:crops if score @s WizardryCooldown matches 1200.. run playsound minecraft:entity.horse.eat block @a ~ ~1 ~ 1 1
execute if block ~ ~-2 ~ #wizardry:crops if score @s WizardryCooldown matches 1200.. run tag @s add ab-unearth
execute if block ~ ~-2 ~ #wizardry:crops if score @s WizardryCooldown matches 1200.. run setblock ~ ~-2 ~ air
scoreboard players set @s[scores={WizardryCooldown=1200..},tag=ab-unearth] WizardryCooldown 0
tag @s remove ab-unearth

#Air generation
execute if block ~ ~-2 ~ air positioned ~ 133 ~ if entity @s[distance=..1] run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ air positioned ~ 133 ~ if entity @s[distance=..1,scores={WizardryCooldown=200}] unless score @s AirEssence matches 50.. run scoreboard players add @s AirEssence 1
execute if block ~ ~-2 ~ air positioned ~ 133 ~ if entity @s[distance=..1,scores={WizardryCooldown=200}] run scoreboard players set @s[scores={WizardryCooldown=200..}] WizardryCooldown 0

#Electric generation
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] unless score @s ElectricEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=100}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=200}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=300}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=400}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=500}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=600}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=700}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=800}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=900}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=1000}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=1100}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if entity @s[scores={WizardryCooldown=1200}] unless score @s ElectricEssence matches 50.. run scoreboard players add @s ElectricEssence 1
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if score @s WizardryCooldown matches 1200.. run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 2
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if score @s WizardryCooldown matches 1200.. run tag @s add ab-unelec
execute positioned ~ ~-3 ~ if entity @e[type=creeper,nbt={powered:1b},distance=..1] if score @s WizardryCooldown matches 1200.. run data merge entity @e[type=creeper,nbt={powered:1b},distance=..1,limit=1] {powered:0b}
scoreboard players set @s[scores={WizardryCooldown=1200..},tag=ab-unelec] WizardryCooldown 0
tag @s remove ab-unelec

#Ice generation
execute if block ~ ~-2 ~ #wizardry:ices unless score @s IceEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=100}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=200}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=300}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=400}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=500}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=600}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=700}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=800}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=900}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1000}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1100}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1200}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1300}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1400}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1500}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1600}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1700}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1800}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=1900}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2000}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2100}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2200}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2300}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2400}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2500}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2600}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2700}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2800}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=2900}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3000}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3100}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3200}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3300}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3400}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3500}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ #wizardry:ices if entity @s[scores={WizardryCooldown=3600}] unless score @s IceEssence matches 50.. run scoreboard players add @s IceEssence 1
execute if block ~ ~-2 ~ minecraft:ice if score @s WizardryCooldown matches 400.. run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
execute if block ~ ~-2 ~ minecraft:ice if score @s WizardryCooldown matches 400.. run tag @s add ab-unice
execute if block ~ ~-2 ~ minecraft:ice if score @s WizardryCooldown matches 400.. run setblock ~ ~-2 ~ water
execute if block ~ ~-2 ~ minecraft:packed_ice if score @s WizardryCooldown matches 1200.. run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
execute if block ~ ~-2 ~ minecraft:packed_ice if score @s WizardryCooldown matches 1200.. run tag @s add ab-unice
execute if block ~ ~-2 ~ minecraft:packed_ice if score @s WizardryCooldown matches 1200.. run setblock ~ ~-2 ~ water
execute if block ~ ~-2 ~ minecraft:blue_ice if score @s WizardryCooldown matches 3600.. run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
execute if block ~ ~-2 ~ minecraft:blue_ice if score @s WizardryCooldown matches 3600.. run tag @s add ab-unice
execute if block ~ ~-2 ~ minecraft:blue_ice if score @s WizardryCooldown matches 3600.. run setblock ~ ~-2 ~ water
scoreboard players set @s[scores={WizardryCooldown=1200..},tag=ab-unice] WizardryCooldown 0
tag @s remove ab-unice

#Life generation
execute if block ~ ~-2 ~ #wizardry:flowers unless score @s LifeEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=100}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=200}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=300}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=400}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=500}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=600}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=700}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=800}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=900}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=1000}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=1100}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if entity @s[scores={WizardryCooldown=1200}] unless score @s LifeEssence matches 50.. run scoreboard players add @s LifeEssence 1
execute if block ~ ~-2 ~ #wizardry:flowers if score @s WizardryCooldown matches 1200.. run playsound minecraft:entity.zombie_villager.cure block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ #wizardry:flowers if score @s WizardryCooldown matches 1200.. run tag @s add ab-unlife
execute if block ~ ~-2 ~ #wizardry:flowers if score @s WizardryCooldown matches 1200.. run setblock ~ ~-2 ~ dead_bush
scoreboard players set @s[scores={WizardryCooldown=1200..},tag=ab-unlife] WizardryCooldown 0
tag @s remove ab-unlife

#Space generation
execute positioned ~ 0 ~ if entity @s[nbt={Dimension:1},distance=..1] unless score @s SpaceEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute positioned ~ 0 ~ if entity @s[nbt={Dimension:1},distance=..1,scores={WizardryCooldown=200..}] unless score @s SpaceEssence matches 50.. run scoreboard players add @s SpaceEssence 1
execute positioned ~ 0 ~ if entity @s[nbt={Dimension:1},distance=..1,scores={WizardryCooldown=200..}] run scoreboard players set @s WizardryCooldown 0

#Death generation
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} unless score @s DeathEssence matches 50.. run scoreboard players add @s WizardryCooldown 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=100}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=200}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=300}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=400}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=500}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=600}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=700}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=800}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=900}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=1000}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=1100}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if entity @s[scores={WizardryCooldown=1200}] unless score @s DeathEssence matches 50.. run scoreboard players add @s DeathEssence 1
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if score @s WizardryCooldown matches 1200.. run playsound minecraft:entity.zombie_villager.cure block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if score @s WizardryCooldown matches 1200.. run tag @s add ab-undeath
execute if block ~ ~-2 ~ spawner{SpawnData:{id:"minecraft:wither_skeleton"}} if score @s WizardryCooldown matches 1200.. run data merge block ~ ~-2 ~ {SpawnData:{id:"minecraft:skeleton"},SpawnPotentials:[{Entity:{id:"minecraft:skeleton"}}]}
scoreboard players set @s[scores={WizardryCooldown=1200..},tag=ab-undeath] WizardryCooldown 0
tag @s remove ab-undeath

#Particles
execute if score @s FireEssence matches 1.. run particle minecraft:flame ~ ~-.5 ~ 0 0 0 0.1 1
execute if score @s FireEssence matches 10.. run particle minecraft:flame ~ ~-.5 ~ 0 0 0 0.1 2
execute if score @s FireEssence matches 30.. run particle minecraft:flame ~ ~-.5 ~ 0 0 0 0.1 3
execute if score @s FireEssence matches 50.. run particle minecraft:flame ~ ~-.5 ~ 0 0 0 0.1 5

execute if score @s WaterEssence matches 1.. run particle minecraft:splash ~ ~-.5 ~ 0.4 0.4 0.4 0.1 1
execute if score @s WaterEssence matches 10.. run particle minecraft:splash ~ ~-.5 ~ 0.4 0.4 0.4 0.1 2
execute if score @s WaterEssence matches 30.. run particle minecraft:splash ~ ~-.5 ~ 0.4 0.4 0.4 0.1 3
execute if score @s WaterEssence matches 50.. run particle minecraft:splash ~ ~-.5 ~ 0.4 0.4 0.4 0.1 5

execute if score @s EarthEssence matches 1.. run particle minecraft:dust 0 255 0 1 ~ ~-.5 ~ 0.4 0.4 0.4 0.5 1
execute if score @s EarthEssence matches 10.. run particle minecraft:dust 0 255 0 1 ~ ~-.5 ~ 0.4 0.4 0.4 0.5 2
execute if score @s EarthEssence matches 30.. run particle minecraft:dust 0 255 0 1 ~ ~-.5 ~ 0.4 0.4 0.4 0.5 3
execute if score @s EarthEssence matches 50.. run particle minecraft:dust 0 255 0 1 ~ ~-.5 ~ 0.4 0.4 0.4 0.5 5

execute if score @s AirEssence matches 1.. run particle minecraft:cloud ~ ~-.5 ~ 0.4 0.4 0.4 0.1 1
execute if score @s AirEssence matches 10.. run particle minecraft:cloud ~ ~-.5 ~ 0.4 0.4 0.4 0.1 2
execute if score @s AirEssence matches 30.. run particle minecraft:cloud ~ ~-.5 ~ 0.4 0.4 0.4 0.1 3
execute if score @s AirEssence matches 50.. run particle minecraft:cloud ~ ~-.5 ~ 0.4 0.4 0.4 0.1 5

execute if score @s ElectricEssence matches 1.. run particle minecraft:angry_villager ~ ~-.5 ~ 1 1 1 0.1 1
execute if score @s ElectricEssence matches 10.. run particle minecraft:angry_villager ~ ~-.5 ~ 1 1 1 0.1 2
execute if score @s ElectricEssence matches 30.. run particle minecraft:angry_villager ~ ~-.5 ~ 1 1 1 0.1 3
execute if score @s ElectricEssence matches 50.. run particle minecraft:angry_villager ~ ~-.5 ~ 1 1 1 0.1 5

execute if score @s IceEssence matches 1.. run particle minecraft:block ice ~ ~-.5 ~ .4 .4 .4 0.1 1
execute if score @s IceEssence matches 10.. run particle minecraft:block ice ~ ~-.5 ~ .4 .4 .4 0.1 2
execute if score @s IceEssence matches 30.. run particle minecraft:block ice ~ ~-.5 ~ .4 .4 .4 0.1 3
execute if score @s IceEssence matches 50.. run particle minecraft:block ice ~ ~-.5 ~ .4 .4 .4 0.1 5

execute if score @s LifeEssence matches 1.. run particle minecraft:heart ~ ~-.5 ~ .4 .4 .4 0.1 1
execute if score @s LifeEssence matches 10.. run particle minecraft:heart ~ ~-.5 ~ .4 .4 .4 0.1 2
execute if score @s LifeEssence matches 30.. run particle minecraft:heart ~ ~-.5 ~ .4 .4 .4 0.1 3
execute if score @s LifeEssence matches 50.. run particle minecraft:heart ~ ~-.5 ~ .4 .4 .4 0.1 5

execute if score @s SpaceEssence matches 1.. run particle minecraft:nautilus ~ ~-.5 ~ .4 .4 .4 0.1 1
execute if score @s SpaceEssence matches 10.. run particle minecraft:nautilus ~ ~-.5 ~ .4 .4 .4 0.1 2
execute if score @s SpaceEssence matches 30.. run particle minecraft:nautilus ~ ~-.5 ~ .4 .4 .4 0.1 3
execute if score @s SpaceEssence matches 50.. run particle minecraft:nautilus ~ ~-.5 ~ .4 .4 .4 0.1 5

execute if score @s DeathEssence matches 1.. run particle minecraft:damage_indicator ~ ~-.5 ~ 0 0 0 0.5 1
execute if score @s DeathEssence matches 10.. run particle minecraft:damage_indicator ~ ~-.5 ~ 0 0 0 0.5 2
execute if score @s DeathEssence matches 30.. run particle minecraft:damage_indicator ~ ~-.5 ~ 0 0 0 0.5 3
execute if score @s DeathEssence matches 50.. run particle minecraft:damage_indicator ~ ~-.5 ~ 0 0 0 0.5 5

#Essence transfering
tag @a add essence-holder
tag @e[tag=magic-totem,type=armor_stand] add essence-holder

execute if score @s FireEssence matches 1.. if entity @a[distance=..7,scores={FireEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,fire-node,wizardry-entity]}
execute if score @s FireEssence matches 1.. if entity @a[distance=..7,scores={FireEssence=..49}] run scoreboard players remove @s FireEssence 1
execute if score @s WaterEssence matches 1.. if entity @a[distance=..7,scores={WaterEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,water-node,wizardry-entity]}
execute if score @s WaterEssence matches 1.. if entity @a[distance=..7,scores={WaterEssence=..49}] run scoreboard players remove @s WaterEssence 1
execute if score @s EarthEssence matches 1.. if entity @a[distance=..7,scores={EarthEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,earth-node,wizardry-entity]}
execute if score @s EarthEssence matches 1.. if entity @a[distance=..7,scores={EarthEssence=..49}] run scoreboard players remove @s EarthEssence 1
execute if score @s AirEssence matches 1.. if entity @a[distance=..7,scores={AirEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,air-node]}
execute if score @s AirEssence matches 1.. if entity @a[distance=..7,scores={AirEssence=..49}] run scoreboard players remove @s AirEssence 1
execute if score @s ElectricEssence matches 1.. if entity @a[distance=..7,scores={ElectricEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,electric-node,wizardry-entity]}
execute if score @s ElectricEssence matches 1.. if entity @a[distance=..7,scores={ElectricEssence=..49}] run scoreboard players remove @s ElectricEssence 1
execute if score @s IceEssence matches 1.. if entity @a[distance=..7,scores={IceEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,ice-node,wizardry-entity]}
execute if score @s IceEssence matches 1.. if entity @a[distance=..7,scores={IceEssence=..49}] run scoreboard players remove @s IceEssence 1
execute if score @s LifeEssence matches 1.. if entity @a[distance=..7,scores={LifeEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,life-node,wizardry-entity]}
execute if score @s LifeEssence matches 1.. if entity @a[distance=..7,scores={LifeEssence=..49}] run scoreboard players remove @s LifeEssence 1
execute if score @s SpaceEssence matches 1.. if entity @a[distance=..7,scores={SpaceEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,space-node,wizardry-entity]}
execute if score @s SpaceEssence matches 1.. if entity @a[distance=..7,scores={SpaceEssence=..49}] run scoreboard players remove @s SpaceEssence 1
execute if score @s DeathEssence matches 1.. if entity @a[distance=..7,scores={DeathEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,death-node,wizardry-entity]}
execute if score @s DeathEssence matches 1.. if entity @a[distance=..7,scores={DeathEssence=..49}] run scoreboard players remove @s DeathEssence 1
execute if score @s FireEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,FireEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,fire-node,wizardry-entity]}
execute if score @s FireEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,FireEssence=..49}] run scoreboard players remove @s FireEssence 1
execute if score @s WaterEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,WaterEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,water-node,wizardry-entity]}
execute if score @s WaterEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,WaterEssence=..49}] run scoreboard players remove @s WaterEssence 1
execute if score @s EarthEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,EarthEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,earth-node,wizardry-entity]}
execute if score @s EarthEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,EarthEssence=..49}] run scoreboard players remove @s EarthEssence 1
execute if score @s AirEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,AirEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,air-node]}
execute if score @s AirEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,AirEssence=..49}] run scoreboard players remove @s AirEssence 1
execute if score @s ElectricEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,ElectricEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,electric-node,wizardry-entity]}
execute if score @s ElectricEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,ElectricEssence=..49}] run scoreboard players remove @s ElectricEssence 1
execute if score @s IceEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,IceEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,ice-node,wizardry-entity]}
execute if score @s IceEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=0,IceEssence=..49}] run scoreboard players remove @s IceEssence 1
execute if score @s LifeEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,SpaceEssence=0,DeathEssence=0,LifeEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,life-node,wizardry-entity]}
execute if score @s LifeEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,SpaceEssence=0,DeathEssence=0,LifeEssence=..49}] run scoreboard players remove @s LifeEssence 1
execute if score @s SpaceEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,space-node,wizardry-entity]}
execute if score @s SpaceEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=..49}] run scoreboard players remove @s SpaceEssence 1
execute if score @s DeathEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=..49}] run summon minecraft:armor_stand ~ ~-1.1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[essence-node,death-node,wizardry-entity]}
execute if score @s DeathEssence matches 1.. if entity @e[distance=..7,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,ElectricEssence=0,IceEssence=0,LifeEssence=0,SpaceEssence=0,DeathEssence=..49}] run scoreboard players remove @s DeathEssence 1

execute as @e[tag=fire-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={FireEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=fire-node] run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=fire-node] run scoreboard players add @a[limit=1,distance=..1,scores={FireEssence=..49}] FireEssence 1
execute at @e[tag=fire-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=..49,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,ElectricEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=0}] FireEssence 1
execute as @e[tag=fire-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={FireEssence=..50}] run kill @s
execute as @e[tag=water-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={WaterEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=water-node] run particle minecraft:dripping_water ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=water-node] run scoreboard players add @a[limit=1,distance=..1,scores={WaterEssence=..49}] WaterEssence 1
execute at @e[tag=water-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=..49,EarthEssence=0,AirEssence=0,IceEssence=0,ElectricEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=0}] WaterEssence 1
execute as @e[tag=water-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={WaterEssence=..50}] run kill @s
execute as @e[tag=earth-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={EarthEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=earth-node] run particle minecraft:falling_dust dark_oak_planks ~ ~1 ~ 0 0 0 0.5 0
execute at @e[tag=earth-node] run scoreboard players add @a[limit=1,distance=..1,scores={EarthEssence=..49}] EarthEssence 1
execute at @e[tag=earth-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=..49,AirEssence=0,IceEssence=0,ElectricEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=0}] EarthEssence 1
execute as @e[tag=earth-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={EarthEssence=..50}] run kill @s
execute as @e[tag=air-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={AirEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=air-node] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=air-node] run scoreboard players add @a[limit=1,distance=..1,scores={AirEssence=..49}] AirEssence 1
execute at @e[tag=air-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=..49,IceEssence=0,ElectricEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=0}] AirEssence 1
execute as @e[tag=air-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={AirEssence=..50}] run kill @s
execute as @e[tag=electric-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={ElectricEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=electric-node] run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=electric-node] run scoreboard players add @a[limit=1,distance=..1,scores={ElectricEssence=..49}] ElectricEssence 1
execute at @e[tag=electric-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,ElectricEssence=..49,LifeEssence=0,DeathEssence=0,SpaceEssence=0}] ElectricEssence 1
execute as @e[tag=electric-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={ElectricEssence=..50}] run kill @s
execute as @e[tag=ice-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={IceEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=ice-node] run particle minecraft:falling_dust snow_block ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=ice-node] run scoreboard players add @a[limit=1,distance=..1,scores={IceEssence=..49}] IceEssence 1
execute at @e[tag=ice-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=..49,ElectricEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=0}] IceEssence 1
execute as @e[tag=ice-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={IceEssence=..50}] run kill @s
execute as @e[tag=life-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={LifeEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=life-node] run particle minecraft:falling_dust pink_wool ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=life-node] run scoreboard players add @a[limit=1,distance=..1,scores={LifeEssence=..49}] LifeEssence 1
execute at @e[tag=life-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,ElectricEssence=0,LifeEssence=..49,DeathEssence=0,SpaceEssence=0}] LifeEssence 1
execute as @e[tag=life-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={LifeEssence=..50}] run kill @s
execute as @e[tag=space-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={SpaceEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=space-node] run particle minecraft:witch ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=space-node] run scoreboard players add @a[limit=1,distance=..1,scores={SpaceEssence=..49}] SpaceEssence 1
execute at @e[tag=space-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,ElectricEssence=0,LifeEssence=0,DeathEssence=0,SpaceEssence=..49}] SpaceEssence 1
execute as @e[tag=space-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={SpaceEssence=..50}] run kill @s
execute as @e[tag=death-node] at @s facing entity @e[limit=1,sort=nearest,tag=essence-holder,scores={DeathEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=death-node] run particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=death-node] run scoreboard players add @a[limit=1,distance=..1,scores={DeathEssence=..49}] DeathEssence 1
execute at @e[tag=death-node] run scoreboard players add @e[limit=1,distance=..1,tag=magic-totem,scores={FireEssence=0,WaterEssence=0,EarthEssence=0,AirEssence=0,IceEssence=0,ElectricEssence=0,LifeEssence=0,DeathEssence=..49,SpaceEssence=0}] DeathEssence 1
execute as @e[tag=death-node] at @s if entity @e[limit=1,distance=..1,tag=essence-holder,scores={DeathEssence=..50}] run kill @s