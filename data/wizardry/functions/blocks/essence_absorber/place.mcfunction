#Block handler
setblock ~ ~ ~ minecraft:polished_andesite
execute align xyz run summon minecraft:armor_stand ~.5 ~1 ~.5 {Tags:[essence-absorber,wizardry-entity],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] FireEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] WaterEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] EarthEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] AirEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] IceEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] LifeEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] ElectricEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] SpaceEssence 0
execute align xyz positioned ~.5 ~1 ~.5 run scoreboard players set @e[tag=essence-absorber,type=minecraft:armor_stand,limit=1,distance=..1,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1561,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Marker:1b}] DeathEssence 0