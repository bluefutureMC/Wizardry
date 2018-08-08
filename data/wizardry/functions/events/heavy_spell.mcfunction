#Activation
execute as @a[x_rotation=-89..90,tag=wand-fire,scores={WizardryWand=1..,FireEssence=25..,WizardrySneak=1..,WizardrySpell=..0}] at @s run function wizardry:items/wand/heavy_spells/fire
execute as @a[x_rotation=-89..90,tag=wand-water,scores={WizardryWand=1..,WaterEssence=20..,WizardrySneak=1..}] at @s run function wizardry:items/wand/heavy_spells/water
execute as @a[x_rotation=-89..90,tag=wand-earth,scores={WizardryWand=1..,EarthEssence=20..,WizardrySneak=1..},tag=!earth-smash] at @s run function wizardry:items/wand/heavy_spells/earth
execute as @a[x_rotation=-89..90,tag=wand-air,scores={WizardryWand=1..,AirEssence=20..,WizardrySneak=1..,WizardrySpell=..0}] at @s run function wizardry:items/wand/heavy_spells/air
execute as @a[x_rotation=-89..90,tag=wand-electric,scores={WizardryWand=1..,ElectricEssence=25..,WizardrySneak=1..},tag=!light-god] at @s run function wizardry:items/wand/heavy_spells/electric
execute as @a[x_rotation=-89..90,tag=wand-ice,scores={WizardryWand=1..,IceEssence=20..,WizardrySneak=1..}] at @s run function wizardry:items/wand/heavy_spells/ice
execute as @a[x_rotation=-89..90,tag=wand-life,scores={WizardryWand=1..,LifeEssence=50..,WizardrySneak=1..}] at @s run function wizardry:items/wand/heavy_spells/life
execute as @a[x_rotation=-89..90,tag=wand-death,scores={WizardryWand=1..,DeathEssence=50..,WizardrySneak=1..}] at @s run function wizardry:items/wand/heavy_spells/death
execute as @a[x_rotation=-89..90,tag=wand-space,scores={WizardryWand=1..,SpaceEssence=5..,WizardrySneak=1..,WizardrySpell=..0}] at @s run function wizardry:items/wand/heavy_spells/space

#Ticker
execute at @e[tag=tornado-ball] run particle minecraft:falling_dust netherrack ~ ~ ~ 0.4 0.4 0.4 0.5 10
execute as @e[tag=tornado-ball] at @s run tp @s ^ ^ ^1
execute at @e[tag=tornado-ball] unless block ~ ~ ~ #wizardry:noclip run summon minecraft:armor_stand ~ ~15 ~ {NoGravity:1b,Invisible:1b,Tags:[fire-tornado,wizardry-entity]}
execute as @e[tag=tornado-ball] at @s unless block ~ ~ ~ #wizardry:noclip run kill @s
execute as @e[tag=fire-tornado] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-15 ^1 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-14 ^1.3 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-13 ^1.6 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-12 ^1.9 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-11 ^2.2 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-10 ^2.5 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-9 ^2.8 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-8 ^3.1 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-7 ^3.4 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-6 ^3.7 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-5 ^4 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-4 ^4.3 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-3 ^4.6 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-2 ^4.9 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^-1 ^5.2 0 0 0 0.05 10 force
execute as @e[tag=fire-tornado] at @s run particle minecraft:flame ^ ^ ^5.5 0 0 0 0.05 10 force
execute at @e[tag=fire-tornado] as @e[distance=..20,tag=!fire-tornado] at @s facing entity @e[tag=fire-tornado,limit=1,distance=..20] feet run tp @s ^ ^ ^1
execute at @e[tag=fire-tornado] as @e[distance=..20,tag=!fire-tornado] run data merge entity @s {Fire:100s}
execute at @e[tag=fire-tornado] at @a[distance=..20,tag=!fire-tornado,gamemode=survival] run summon minecraft:small_fireball ~ ~2.1 ~ {damage:0d,direction:[0.0,-2.0,0.0]}
execute at @e[tag=fire-tornado] at @a[distance=..20,tag=!fire-tornado,gamemode=adventure] run summon minecraft:small_fireball ~ ~2.1 ~ {damage:0d,direction:[0.0,-2.0,0.0]}
scoreboard players add @e[tag=fire-tornado] WizardryCooldown 1
kill @e[tag=fire-tornado,scores={WizardryCooldown=600..}]

scoreboard players add @a[tag=earth-smash] WizardryCooldown 1
execute at @a[tag=earth-smash,nbt={OnGround:1b},scores={WizardryCooldown=10..}] unless block ~ ~-1 ~ bedrock unless block ~ ~-2 ~ bedrock unless block ~ ~-3 ~ bedrock run summon minecraft:armor_stand ~ ~ ~ {Tags:[smasher],Invisible:1b,Marker:1b}
execute at @a[tag=earth-smash,nbt={OnGround:1b},scores={WizardryCooldown=10..}] as @e[tag=!earth-smash,distance=..5] at @s run tp @s ~ ~.2 ~
execute at @a[tag=earth-smash,nbt={OnGround:1b},scores={WizardryCooldown=10..}] as @e[tag=!earth-smash,distance=..5] run function wizardry:utility/damage2
tag @a[tag=earth-smash,nbt={OnGround:1b},scores={WizardryCooldown=10..}] remove earth-smash
execute at @e[tag=smasher] run fill ~-3 ~ ~-3 ~3 ~ ~3 air destroy
execute at @e[tag=smasher] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air destroy
execute at @e[tag=smasher] run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 air destroy
execute at @e[tag=smasher] run fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 air destroy
kill @e[tag=smasher]

execute as @e[tag=push-back] at @s run tp @s ~ ~ ~ facing entity @a[tag=wand-air,limit=1,sort=nearest]
execute as @e[tag=push-back] at @s positioned ^ ^ ^-10 run summon minecraft:armor_stand ~ ~ ~ {Tags:[motion-pos],Invisible:1b,NoGravity:1b}
execute as @e[tag=push-back] at @s positioned ^ ^ ^-10 store result score @s MotionX run data get entity @e[limit=1,type=armor_stand,distance=..1,tag=motion-pos] Pos[0] 10
execute as @e[tag=push-back] at @s positioned ^ ^ ^-10 store result score @s MotionZ run data get entity @e[limit=1,type=armor_stand,distance=..1,tag=motion-pos] Pos[2] 10
execute as @e[tag=push-back] store result score @s PosX run data get entity @s Pos[0] 10
execute as @e[tag=push-back] store result score @s PosZ run data get entity @s Pos[2] 10
execute as @e[tag=push-back] run scoreboard players operation @s MotionX -= @s PosX
execute as @e[tag=push-back] run scoreboard players operation @s MotionZ -= @s PosZ
execute as @e[tag=push-back] run data merge entity @s {Motion:[0.0d,2.0d,0.0d]}
execute as @e[tag=push-back] store result entity @s Motion[0] double 0.1 run scoreboard players get @s MotionX
execute as @e[tag=push-back] store result entity @s Motion[2] double 0.1 run scoreboard players get @s MotionZ
tag @e[tag=push-back] remove push-back
kill @e[tag=motion-pos]

execute as @e[tag=push-ice] at @s run tp @s ~ ~ ~ facing entity @a[tag=wand-ice,limit=1,sort=nearest]
execute as @e[tag=push-ice] at @s positioned ^ ^ ^-2 run summon minecraft:armor_stand ~ ~ ~ {Tags:[motion-pos],Invisible:1b,NoGravity:1b}
execute as @e[tag=push-ice] at @s positioned ^ ^ ^-2 store result score @s MotionX run data get entity @e[limit=1,type=armor_stand,distance=..1,tag=motion-pos] Pos[0] 10
execute as @e[tag=push-ice] at @s positioned ^ ^ ^-2 store result score @s MotionZ run data get entity @e[limit=1,type=armor_stand,distance=..1,tag=motion-pos] Pos[2] 10
execute as @e[tag=push-ice] store result score @s PosX run data get entity @s Pos[0] 10
execute as @e[tag=push-ice] store result score @s PosZ run data get entity @s Pos[2] 10
execute as @e[tag=push-ice] run scoreboard players operation @s MotionX -= @s PosX
execute as @e[tag=push-ice] run scoreboard players operation @s MotionZ -= @s PosZ
execute as @e[tag=push-ice] run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[tag=push-ice] store result entity @s Motion[0] double 0.1 run scoreboard players get @s MotionX
execute as @e[tag=push-ice] store result entity @s Motion[2] double 0.1 run scoreboard players get @s MotionZ
tag @e[tag=push-ice] remove push-ice
kill @e[tag=motion-pos]
scoreboard players add @e[tag=ice-spike] WizardryCooldown 1
kill @e[tag=ice-spike,scores={WizardryCooldown=40..}]

scoreboard players add @a[tag=light-god] WizardryCooldown 1
execute at @a[tag=light-god] run particle minecraft:falling_dust yellow_concrete ~ ~ ~ .3 .8 .3 1 50
execute at @a[tag=light-god] run effect give @e[distance=0.2..5] wither 1 4 true
execute at @a[tag=light-god] at @e[distance=0.2..5] run particle minecraft:angry_villager ~ ~ ~ .3 1 .3 0.5 1
tag @a[tag=light-god,scores={WizardryCooldown=600..}] remove light-god

execute as @e[tag=life-extractor] at @s run tp @s ^ ^ ^.2
execute at @e[tag=life-extractor] run particle minecraft:smoke ~ ~ ~ 1.1 1.1 1.1 0.01 100
execute at @e[tag=life-extractor] run kill @e[distance=0.1..3]
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace oak_leaves
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace spruce_leaves
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace birch_leaves
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace jungle_leaves
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace acacia_leaves
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace dark_oak_leaves
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace grass
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace tall_grass
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace seagrass
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #wizardry:crops
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #wizardry:flowers
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:dead_tube_coral_block replace minecraft:tube_coral_block
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:dead_brain_coral_block replace minecraft:brain_coral_block
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:dead_bubble_coral_block replace minecraft:bubble_coral_block
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:dead_fire_coral_block replace minecraft:fire_coral_block
execute at @e[tag=life-extractor] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:dead_horn_coral_block replace minecraft:horn_coral_block
scoreboard players add @e[tag=life-extractor] WizardryCooldown 1
execute as @e[tag=life-extractor,scores={WizardryCooldown=200..}] run kill @s

execute as @e[tag=space-portal-prog] at @s run tp @s ^ ^ ^0.2
execute at @e[tag=space-portal-prog] run particle minecraft:enchant ~ ~1 ~ 0 0 0 0.01 1
execute as @e[tag=space-portal-prog,scores={WizardryCooldown=40..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:[space-portal,wizardry-entity],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1541,Unbreakable:1b}}],Pose:{Head:[0.0f,1.0f,0.0f]}}
execute as @e[tag=space-portal-prog,scores={WizardryCooldown=40..}] at @s store result entity @e[tag=space-portal,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1
execute as @e[tag=space-portal-prog,scores={WizardryCooldown=40..}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.1 20
execute as @e[tag=space-portal-prog,scores={WizardryCooldown=40..}] run kill @s
execute as @e[tag=space-portal-prog] at @s unless block ^ ^ ^1 #wizardry:noclip run summon minecraft:armor_stand ~ ~ ~ {Tags:[space-portal,wizardry-entity],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1541,Unbreakable:1b}}],Pose:{Head:[0.0f,1.0f,0.0f]}}
execute as @e[tag=space-portal-prog] at @s unless block ^ ^ ^1 #wizardry:noclip store result entity @e[tag=space-portal,limit=1,sort=nearest] Pose.Head[1] float 1 run data get entity @s Rotation[0] 1
execute as @e[tag=space-portal-prog] at @s unless block ^ ^ ^1 #wizardry:noclip run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.1 20
execute as @e[tag=space-portal-prog] at @s unless block ^ ^ ^1 #wizardry:noclip run kill @s
scoreboard players add @e[tag=space-portal-prog] WizardryCooldown 1
execute at @e[tag=space-portal] run tag @a[limit=1,distance=..1] add space-travel
execute at @e[tag=space-portal] if entity @a[limit=1,distance=..1,tag=space-travel] run scoreboard players set @a[limit=1,distance=..1,gamemode=survival] LastGM 0
execute at @e[tag=space-portal] if entity @a[limit=1,distance=..1,tag=space-travel] run scoreboard players set @a[limit=1,distance=..1,gamemode=creative] LastGM 1
execute at @e[tag=space-portal] if entity @a[limit=1,distance=..1,tag=space-travel] run scoreboard players set @a[limit=1,distance=..1,gamemode=adventure] LastGM 2
execute at @e[tag=space-portal] if entity @a[limit=1,distance=..1,tag=space-travel] run scoreboard players reset @a[limit=1,distance=..1,gamemode=spectator] LastGM
execute at @e[tag=space-portal] if entity @a[limit=1,distance=..1,tag=space-travel] run summon minecraft:armor_stand ~ ~ ~ {Tags:[space-travel-pointer,wizardry-entity],Invisible:1b,Marker:1b,NoGravity:1b}
execute as @e[tag=space-portal] at @s if entity @a[limit=1,distance=..1,tag=space-travel] store result entity @e[tag=space-travel-pointer,limit=1,sort=nearest,distance=..1] Rotation[0] float 1 run data get entity @s Pose.Head[1] 1
execute at @e[tag=space-portal] if entity @a[limit=1,distance=..1,tag=space-travel] run particle minecraft:portal ~ ~1 ~ 0 0 0 0.5 200
execute as @e[tag=space-portal] at @s if entity @a[limit=1,distance=..1,tag=space-travel] run kill @s
execute at @e[tag=space-portal,scores={WizardryCooldown=1150}] run particle minecraft:portal ~ ~1 ~ 0 0 0 0.5 200
execute as @e[tag=space-portal,scores={WizardryCooldown=1200..}] run kill @s
scoreboard players add @e[tag=space-portal] WizardryCooldown 1
execute as @e[tag=space-travel-pointer] at @s run tp @a[limit=1,tag=space-travel,sort=nearest] ~ ~ ~
execute as @e[tag=space-travel-pointer] at @s run gamemode spectator @a[limit=1,tag=space-travel,sort=nearest,distance=..2]
execute as @e[tag=space-travel-pointer] at @s run particle minecraft:nautilus ~ ~ ~ 0 0 0 0.5 0
execute as @e[tag=space-travel-pointer] at @s run tp @s ^ ^ ^1
execute as @e[tag=space-travel-pointer] at @s unless entity @a[tag=space-travel,distance=..3] run kill @s
execute as @a[gamemode=spectator,tag=space-travel,scores={WizardrySneak=1..,LastGM=0}] run gamemode survival @s
execute as @a[gamemode=spectator,tag=space-travel,scores={WizardrySneak=1..,LastGM=1}] run gamemode creative @s
execute as @a[gamemode=spectator,tag=space-travel,scores={WizardrySneak=1..,LastGM=2}] run gamemode adventure @s
execute as @a[tag=space-travel,scores={WizardrySneak=1..}] run tag @s remove space-travel