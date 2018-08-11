#Block breaker
execute if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.fire int 1 run scoreboard players get @s FireEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.water int 1 run scoreboard players get @s WaterEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.earth int 1 run scoreboard players get @s EarthEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.air int 1 run scoreboard players get @s AirEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.electric int 1 run scoreboard players get @s ElectricEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.ice int 1 run scoreboard players get @s IceEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.life int 1 run scoreboard players get @s LifeEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.space int 1 run scoreboard players get @s SpaceEssence
execute if block ~ ~-1 ~ air store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] Item.tag.essence.death int 1 run scoreboard players get @s DeathEssence
execute if score @s FireEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"red\",\"italic\":false}"}}}}
execute if score @s WaterEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"blue\",\"italic\":false}"}}}}
execute if score @s EarthEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"dark_green\",\"italic\":false}"}}}}
execute if score @s AirEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"aqua\",\"italic\":false}"}}}}
execute if score @s ElectricEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute if score @s IceEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"white\",\"italic\":false}"}}}}
execute if score @s LifeEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"light_purple\",\"italic\":false}"}}}}
execute if score @s SpaceEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"dark_purple\",\"italic\":false}"}}}}
execute if score @s DeathEssence matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"gold\",\"italic\":false}"},SkullOwner:{Id:"f71b2f87-8dbe-4f77-8898-54bfdc94dbb9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUwMDgyMThjZTU1ZjE1NjhkMmI4M2JkOWI4MDgzZjIyMGFmMTc4MjEzZmMxYTE5NmQzYTYxMDg4YzFlYzMyYSJ9fX0="}]}}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Magic Totem\",\"color\":\"dark_gray\",\"italic\":false}"}}}}
execute if block ~ ~-1 ~ air run kill @s

#Eye particles
execute at @e[tag=magic-totem,scores={FireEssence=1..}] run particle minecraft:dust 1 0 0 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={FireEssence=1..}] run particle minecraft:dust 1 0 0 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={WaterEssence=1..}] run particle minecraft:dust 0 0 1 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={WaterEssence=1..}] run particle minecraft:dust 0 0 1 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={EarthEssence=1..}] run particle minecraft:dust 0 1 0 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={EarthEssence=1..}] run particle minecraft:dust 0 1 0 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={AirEssence=1..}] run particle minecraft:dust 1 1 1 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={AirEssence=1..}] run particle minecraft:dust 1 1 1 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={ElectricEssence=1..}] run particle minecraft:dust 1 1 0 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={ElectricEssence=1..}] run particle minecraft:dust 1 1 0 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={IceEssence=1..}] run particle minecraft:dust 0.7 0.7 1 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={IceEssence=1..}] run particle minecraft:dust 0.7 0.7 1 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={LifeEssence=1..}] run particle minecraft:dust 1 0.5 0.5 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={LifeEssence=1..}] run particle minecraft:dust 1 0.5 0.5 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={SpaceEssence=1..}] run particle minecraft:dust 1 0 1 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={SpaceEssence=1..}] run particle minecraft:dust 1 0 1 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={DeathEssence=1..}] run particle minecraft:dust 0 0 0 1 ^-.1 ^.5 ^0.1 0 0 0 0.5 0
execute at @e[tag=magic-totem,scores={DeathEssence=1..}] run particle minecraft:dust 0 0 0 1 ^.1 ^.5 ^0.1 0 0 0 0.5 0

#Score initializers
scoreboard players add @s FireEssence 0
scoreboard players add @s WaterEssence 0
scoreboard players add @s EarthEssence 0
scoreboard players add @s AirEssence 0
scoreboard players add @s ElectricEssence 0
scoreboard players add @s IceEssence 0
scoreboard players add @s LifeEssence 0
scoreboard players add @s SpaceEssence 0
scoreboard players add @s DeathEssence 0

#Essence transfer
execute if score @s FireEssence matches 1.. if entity @a[distance=..7,scores={FireEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-fire-node,wizardry-entity]}
execute if score @s FireEssence matches 1.. if entity @a[distance=..7,scores={FireEssence=..49}] run scoreboard players remove @s FireEssence 1
execute if score @s WaterEssence matches 1.. if entity @a[distance=..7,scores={WaterEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-water-node,wizardry-entity]}
execute if score @s WaterEssence matches 1.. if entity @a[distance=..7,scores={WaterEssence=..49}] run scoreboard players remove @s WaterEssence 1
execute if score @s EarthEssence matches 1.. if entity @a[distance=..7,scores={EarthEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-earth-node,wizardry-entity]}
execute if score @s EarthEssence matches 1.. if entity @a[distance=..7,scores={EarthEssence=..49}] run scoreboard players remove @s EarthEssence 1
execute if score @s AirEssence matches 1.. if entity @a[distance=..7,scores={AirEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-air-node]}
execute if score @s AirEssence matches 1.. if entity @a[distance=..7,scores={AirEssence=..49}] run scoreboard players remove @s AirEssence 1
execute if score @s ElectricEssence matches 1.. if entity @a[distance=..7,scores={ElectricEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-electric-node,wizardry-entity]}
execute if score @s ElectricEssence matches 1.. if entity @a[distance=..7,scores={ElectricEssence=..49}] run scoreboard players remove @s ElectricEssence 1
execute if score @s IceEssence matches 1.. if entity @a[distance=..7,scores={IceEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-ice-node,wizardry-entity]}
execute if score @s IceEssence matches 1.. if entity @a[distance=..7,scores={IceEssence=..49}] run scoreboard players remove @s IceEssence 1
execute if score @s LifeEssence matches 1.. if entity @a[distance=..7,scores={LifeEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-life-node,wizardry-entity]}
execute if score @s LifeEssence matches 1.. if entity @a[distance=..7,scores={LifeEssence=..49}] run scoreboard players remove @s LifeEssence 1
execute if score @s SpaceEssence matches 1.. if entity @a[distance=..7,scores={SpaceEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-space-node,wizardry-entity]}
execute if score @s SpaceEssence matches 1.. if entity @a[distance=..7,scores={SpaceEssence=..49}] run scoreboard players remove @s SpaceEssence 1
execute if score @s DeathEssence matches 1.. if entity @a[distance=..7,scores={DeathEssence=..49}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:[totem-essence-node,totem-death-node,wizardry-entity]}
execute if score @s DeathEssence matches 1.. if entity @a[distance=..7,scores={DeathEssence=..49}] run scoreboard players remove @s DeathEssence 1

execute as @e[tag=totem-fire-node] at @s facing entity @p[scores={FireEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-fire-node] run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-fire-node] run scoreboard players add @a[limit=1,distance=..1,scores={FireEssence=..49}] FireEssence 1
execute as @e[tag=totem-fire-node] at @s if entity @a[limit=1,distance=..1,scores={FireEssence=..50}] run kill @s
execute as @e[tag=totem-water-node] at @s facing entity @p[scores={WaterEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-water-node] run particle minecraft:dripping_water ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-water-node] run scoreboard players add @a[limit=1,distance=..1,scores={WaterEssence=..49}] WaterEssence 1
execute as @e[tag=totem-water-node] at @s if entity @a[limit=1,distance=..1,scores={WaterEssence=..50}] run kill @s
execute as @e[tag=totem-earth-node] at @s facing entity @p[scores={EarthEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-earth-node] run particle minecraft:falling_dust dark_oak_planks ~ ~1 ~ 0 0 0 0.5 0
execute at @e[tag=totem-earth-node] run scoreboard players add @a[limit=1,distance=..1,scores={EarthEssence=..49}] EarthEssence 1
execute as @e[tag=totem-earth-node] at @s if entity @a[limit=1,distance=..1,scores={EarthEssence=..50}] run kill @s
execute as @e[tag=totem-air-node] at @s facing entity @p[scores={AirEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-air-node] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-air-node] run scoreboard players add @a[limit=1,distance=..1,scores={AirEssence=..49}] AirEssence 1
execute as @e[tag=totem-air-node] at @s if entity @a[limit=1,distance=..1,scores={AirEssence=..50}] run kill @s
execute as @e[tag=totem-electric-node] at @s facing entity @p[scores={ElectricEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-electric-node] run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-electric-node] run scoreboard players add @a[limit=1,distance=..1,scores={ElectricEssence=..49}] ElectricEssence 1
execute as @e[tag=totem-electric-node] at @s if entity @a[limit=1,distance=..1,scores={ElectricEssence=..50}] run kill @s
execute as @e[tag=totem-ice-node] at @s facing entity @p[scores={IceEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-ice-node] run particle minecraft:falling_dust snow_block ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-ice-node] run scoreboard players add @a[limit=1,distance=..1,scores={IceEssence=..49}] IceEssence 1
execute as @e[tag=totem-ice-node] at @s if entity @a[limit=1,distance=..1,scores={IceEssence=..50}] run kill @s
execute as @e[tag=totem-life-node] at @s facing entity @p[scores={LifeEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-life-node] run particle minecraft:falling_dust pink_wool ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-life-node] run scoreboard players add @a[limit=1,distance=..1,scores={LifeEssence=..49}] LifeEssence 1
execute as @e[tag=totem-life-node] at @s if entity @a[limit=1,distance=..1,scores={LifeEssence=..50}] run kill @s
execute as @e[tag=totem-space-node] at @s facing entity @p[scores={SpaceEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-space-node] run particle minecraft:witch ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-space-node] run scoreboard players add @a[limit=1,distance=..1,scores={SpaceEssence=..49}] SpaceEssence 1
execute as @e[tag=totem-space-node] at @s if entity @a[limit=1,distance=..1,scores={SpaceEssence=..50}] run kill @s
execute as @e[tag=totem-death-node] at @s facing entity @p[scores={DeathEssence=..50}] feet run tp @s ^ ^ ^.1
execute at @e[tag=totem-death-node] run particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.5 0
execute at @e[tag=totem-death-node] run scoreboard players add @a[limit=1,distance=..1,scores={DeathEssence=..49}] DeathEssence 1
execute as @e[tag=totem-death-node] at @s if entity @a[limit=1,distance=..1,scores={DeathEssence=..50}] run kill @s