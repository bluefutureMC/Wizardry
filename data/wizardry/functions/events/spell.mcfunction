#Activation
execute as @a[x_rotation=-89..90,tag=wand-fire,scores={WizardryWand=1..,FireEssence=5..,WizardrySneak=..0}] at @s run function wizardry:items/wand/spells/fire
execute as @a[x_rotation=-89..90,tag=wand-water,scores={WizardryWand=1..,WaterEssence=1..,WizardrySneak=..0}] at @s run function wizardry:items/wand/spells/water
execute as @a[x_rotation=-89..90,tag=wand-earth,scores={WizardryWand=1..,EarthEssence=10..,WizardrySneak=..0,WizardrySpell=..0}] at @s run function wizardry:items/wand/spells/earth
execute as @a[x_rotation=-89..90,tag=wand-air,scores={WizardryWand=1..,AirEssence=10..,WizardrySneak=..0},tag=!cloud-walker] at @s run function wizardry:items/wand/spells/air
execute as @a[x_rotation=-89..90,tag=wand-electric,scores={WizardryWand=1..,ElectricEssence=5..,WizardrySneak=..0,WizardrySpell=..0}] at @s run function wizardry:items/wand/spells/electric
execute as @a[x_rotation=-89..90,tag=wand-ice,scores={WizardryWand=1..,IceEssence=5..,WizardrySneak=..0}] at @s run function wizardry:items/wand/spells/ice
execute as @a[x_rotation=-89..90,tag=wand-life,scores={WizardryWand=1..,LifeEssence=10..,WizardrySneak=..0}] at @s run function wizardry:items/wand/spells/life
execute as @a[x_rotation=-89..90,tag=wand-death,scores={WizardryWand=1..,DeathEssence=5..,WizardrySneak=..0,WizardrySpell=..0}] at @s run function wizardry:items/wand/spells/death
execute as @a[x_rotation=-89..90,tag=wand-space,scores={WizardryWand=1..,SpaceEssence=5..,WizardrySneak=..0,WizardrySpell=..0}] at @s run function wizardry:items/wand/spells/space

#Ticker
execute at @e[tag=flame] run particle minecraft:flame ~ ~ ~ 0 0 0 0.03 10
execute as @e[tag=flame] at @s run tp @s ^ ^ ^1
execute at @e[tag=flame] as @e[tag=!flame,distance=..1] run data merge entity @s {Fire:200s}
execute at @e[tag=flame] at @a[gamemode=survival,distance=..1] run summon arrow ~ ~2.1 ~ {damage:0d,life:1199s,Fire:1000s}
execute at @e[tag=flame] at @a[gamemode=adventure,distance=..1] run summon arrow ~ ~2.1 ~ {damage:0d,life:1199s,Fire:1000s}
execute at @e[tag=flame] unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:fire replace #wizardry:noclip
execute as @e[tag=flame] at @s unless block ~ ~ ~ #wizardry:noclip run kill @s
execute as @e[tag=flame] at @s if block ~ ~ ~ minecraft:water run kill @s

execute at @e[tag=water-burst] run particle minecraft:splash ~ ~ ~ 0 0 0 0.03 50
execute as @e[tag=water-burst] at @s run tp @s ^ ^ ^1
execute at @e[tag=water-burst] as @e[tag=!water-burst,distance=..1] run data merge entity @s {Fire:-1s}
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:fire
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:obsidian replace minecraft:lava[level=0]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=1]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=2]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=3]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=4]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=5]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=6]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=7]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=8]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=9]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=10]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=11]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=12]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=13]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=14]
execute at @e[tag=water-burst] positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cobblestone replace minecraft:lava[level=15]
execute as @e[tag=water-burst] at @s positioned ~ ~1 ~ unless block ~ ~ ~ #wizardry:noclip run kill @s
execute as @e[tag=water-burst] run data merge entity @s {Fire:-10s}
execute as @e[tag=water-burst] at @s as @e[type=blaze,distance=..1.3,limit=1] run function wizardry:utility/damage1
execute as @e[tag=water-burst] at @s if entity @e[type=blaze,distance=..1.3,limit=1] run kill @s

scoreboard players add @e[tag=drill] WizardryCooldown 1
execute at @e[tag=drill] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.5 1
execute at @e[tag=drill] as @e[tag=!drill,distance=..1] run effect give @s minecraft:poison 10 0 true
execute as @e[tag=drill] at @s unless block ~ ~ ~ #wizardry:unbreakable run fill ~ ~ ~ ~-1 ~1 ~-1 air destroy
execute as @e[tag=drill] at @s unless block ^ ^ ^1 #wizardry:unbreakable run tp @s ^ ^ ^1
execute as @e[tag=drill] at @s if block ^ ^ ^1 #wizardry:unbreakable run kill @s
kill @e[tag=drill,scores={WizardryCooldown=60..}]

execute at @a[tag=cloud-walker] run particle minecraft:cloud ~ ~-1 ~ 1 0 1 0.01 10
scoreboard players add @a[tag=cloud-walker] WizardryCooldown 1
tag @a[tag=cloud-walker,scores={WizardryCooldown=400..}] remove cloud-walker

scoreboard players add @e[tag=lightning-orb] WizardryCooldown 1
execute at @e[tag=lightning-orb] run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0.5 1
execute at @e[tag=lightning-orb] as @e[tag=!lightning-orb,tag=!wand-electric,distance=..5] run effect give @s minecraft:wither 1 1 true
execute at @e[tag=lightning-orb] at @e[tag=!lightning-orb,tag=!wand-electric,distance=..5] run particle minecraft:falling_dust yellow_wool ~ ~ ~ 1 1 1 1 1
execute as @e[tag=lightning-orb] at @s run tp @s ^ ^ ^.2
kill @e[tag=lightning-orb,scores={WizardryCooldown=100..}]

scoreboard players add @e[tag=frost] WizardryCooldown 1
execute at @e[tag=frost] run particle minecraft:block ice ~ ~ ~ 0.1 0.1 0.1 0.5 10
execute at @e[tag=frost] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:frosted_ice replace water[level=0]
execute at @e[tag=frost,scores={WizardryCooldown=3..}] at @e[distance=..1.3,limit=1,tag=!wizardry-entity,type=!item] run summon armor_stand ~ ~ ~ {Tags:[ice-berg,wizardry-entity],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1543,Unbreakable:1b}}],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @e[tag=frost,scores={WizardryCooldown=3..}] as @e[distance=..1.3,limit=1,tag=!wizardry-entity,type=!item] run tag @s add frozen
execute as @e[tag=frost,scores={WizardryCooldown=3..}] at @s if entity @e[distance=..1.3,limit=1,tag=!wizardry-entity,type=!item] run kill @s
scoreboard players add @e[tag=frozen] WizardryCooldown 1
execute as @e[tag=frost] at @s if block ^ ^ ^.5 #wizardry:noclip run tp @s ^ ^ ^.5
kill @e[tag=frost,scores={WizardryCooldown=100..}]
execute as @e[tag=frost] at @s unless block ^ ^ ^.5 #wizardry:noclip run kill @s
execute as @e[tag=frost] at @s if block ^ ^ ^.5 minecraft:lava run kill @s
execute at @e[tag=ice-berg] run tp @e[tag=frozen,limit=1,distance=..2] ~ ~ ~
execute as @e[tag=ice-berg] at @s unless entity @e[tag=frozen,limit=1,distance=..2] run kill @s
execute as @e[tag=frozen] run data merge entity @s {NoAI:1b}
execute as @e[tag=frozen,scores={WizardryCooldown=100..}] run data merge entity @s {NoAI:0b}
execute as @e[tag=frozen,scores={WizardryCooldown=100..}] run tag @s add reset-cool
execute as @e[tag=frozen,scores={WizardryCooldown=100..}] run tag @s remove frozen
scoreboard players set @e[tag=reset-cool] WizardryCooldown 0
tag @e remove reset-cool

scoreboard players add @e[tag=life-beam] WizardryCooldown 1
execute at @e[tag=life-beam] run particle minecraft:heart ~ ~ ~ 0 0 0 0.5 1
execute at @e[tag=life-beam] as @e[type=!player,tag=!life-beam,distance=..1,limit=1] run effect give @s minecraft:instant_health 1 2 true
execute as @e[tag=life-beam] at @s if entity @e[type=!player,tag=!life-beam,distance=..1,limit=1] run kill @s
execute as @e[tag=life-beam] at @s run teleport @s ^ ^ ^.3 facing entity @e[type=!player,tag=!life-beam,limit=1,sort=nearest]
kill @e[tag=life-beam,scores={WizardryCooldown=200..}]

execute as @e[tag=space-disk] at @s run tp @s ^ ^ ^.2
execute at @e[tag=space-disk] run tp @e[tag=space-disk-hill,limit=1,sort=nearest] ~ ~ ~
execute as @e[tag=space-disk-hill] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=space-disk-hill] at @s run particle minecraft:dust 0.5 0 0.5 1 ~ ~ ~ 0 0 0 0.5 10
execute as @e[tag=space-disk-hill] at @s run particle minecraft:end_rod ^ ^ ^1 0 0 0 0.5 0
execute as @e[tag=space-disk-hill] at @s run particle minecraft:end_rod ^ ^ ^-1 0 0 0 0.5 0
execute at @e[tag=space-disk,scores={WizardryCooldown=12..}] run effect give @e[distance=..2] minecraft:levitation 5 2 true
execute as @e[tag=space-disk,scores={WizardryCooldown=100..}] run kill @e[tag=space-disk-hill,limit=1,sort=nearest]
execute as @e[tag=space-disk,scores={WizardryCooldown=100..}] run kill @s
scoreboard players add @e[tag=space-disk] WizardryCooldown 1