#Activation
execute as @a[x_rotation=-90,tag=wand-fire,scores={WizardryWand=1..,FireEssence=10..,WizardrySpell=..0}] at @s run function wizardry:items/wand/sky_spells/fire
execute as @a[x_rotation=-90,tag=wand-water,scores={WizardryWand=1..,WaterEssence=10..}] at @s run function wizardry:items/wand/sky_spells/water
execute as @a[x_rotation=-90,tag=wand-earth,scores={WizardryWand=1..,EarthEssence=15..}] at @s run function wizardry:items/wand/sky_spells/earth
execute as @a[x_rotation=-90,tag=wand-air,scores={WizardryWand=1..,AirEssence=10..}] at @s run function wizardry:items/wand/sky_spells/air
execute as @a[x_rotation=-90,tag=wand-electric,scores={WizardryWand=1..,ElectricEssence=10..}] at @s run function wizardry:items/wand/sky_spells/electric
execute as @a[x_rotation=-90,tag=wand-ice,scores={WizardryWand=1..,IceEssence=10..}] at @s run function wizardry:items/wand/sky_spells/ice
execute as @a[x_rotation=-90,tag=wand-life,scores={WizardryWand=1..,LifeEssence=20..}] at @s run function wizardry:items/wand/sky_spells/life
execute as @a[x_rotation=-90,tag=wand-death,scores={WizardryWand=1..,DeathEssence=30..}] at @s run function wizardry:items/wand/sky_spells/death
execute as @a[x_rotation=-90,tag=wand-space,scores={WizardryWand=1..,SpaceEssence=50..}] at @s run function wizardry:items/wand/sky_spells/space

#Ticker
scoreboard players add @e[tag=frozen-shield] WizardryCooldown 1
execute at @e[tag=frozen-shield,scores={WizardryCooldown=100..}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:ice
execute as @e[tag=frozen-shield,scores={WizardryCooldown=100..}] run kill @s

scoreboard players add @e[tag=cure] WizardryCooldown 1
execute at @e[tag=cure] run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 0.5 10 force
execute at @e[tag=cure,tag=!cure-baby,type=zombie_villager,nbt={Profession:0},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:0}
execute at @e[tag=cure,tag=!cure-baby,type=zombie_villager,nbt={Profession:1},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:1}
execute at @e[tag=cure,tag=!cure-baby,type=zombie_villager,nbt={Profession:2},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:2}
execute at @e[tag=cure,tag=!cure-baby,type=zombie_villager,nbt={Profession:3},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:3}
execute at @e[tag=cure,tag=!cure-baby,type=zombie_villager,nbt={Profession:4},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:4}
execute at @e[tag=cure,tag=!cure-baby,type=zombie_villager,nbt={Profession:5},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:5}
execute at @e[tag=cure,tag=cure-baby,type=zombie_villager,nbt={Profession:0},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:0,Age:-20000}
execute at @e[tag=cure,tag=cure-baby,type=zombie_villager,nbt={Profession:1},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:1,Age:-20000}
execute at @e[tag=cure,tag=cure-baby,type=zombie_villager,nbt={Profession:2},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:2,Age:-20000}
execute at @e[tag=cure,tag=cure-baby,type=zombie_villager,nbt={Profession:3},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:3,Age:-20000}
execute at @e[tag=cure,tag=cure-baby,type=zombie_villager,nbt={Profession:4},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:4,Age:-20000}
execute at @e[tag=cure,tag=cure-baby,type=zombie_villager,nbt={Profession:5},scores={WizardryCooldown=100..}] run summon villager ~ ~ ~ {Profession:5,Age:-20000}
execute at @e[tag=cure,tag=cure-baby,type=zombie_pigman,scores={WizardryCooldown=100..}] run summon pig ~ ~ ~ {Age:-20000}
execute at @e[tag=cure,tag=!cure-baby,type=zombie_pigman,scores={WizardryCooldown=100..}] run summon pig ~ ~ ~
execute at @e[tag=cure,tag=!cure-baby,type=zombie_horse,scores={WizardryCooldown=100..}] run summon horse ~ ~ ~
execute at @e[tag=cure,type=witch,scores={WizardryCooldown=100..}] run summon villager ~ ~ ~
execute as @e[tag=cure,scores={WizardryCooldown=100..}] at @s run playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~
execute as @e[tag=cure,scores={WizardryCooldown=100..}] at @s run tp ~ -10 ~
execute as @e[tag=cure,scores={WizardryCooldown=100..}] at @s run kill @s

execute at @e[tag=death-hilixer] run tp @e[limit=1,sort=nearest,tag=death-hilix] ~ ~ ~
execute as @e[tag=death-hilixer] at @s run tp @s ~ ~.1 ~ ~10 ~
execute as @e[tag=death-hilixer] at @s run particle minecraft:falling_dust coal_block ^ ^ ^2 0 0 0 0.5 5
execute as @e[tag=death-hilixer] at @s run particle minecraft:falling_dust coal_block ^ ^ ^-2 0 0 0 0.5 5
execute at @e[tag=death-hilixer,scores={WizardryCooldown=100..}] run kill @e[limit=1,tag=death-hilix,sort=nearest]
execute at @e[tag=death-hilixer,scores={WizardryCooldown=100..}] run particle minecraft:damage_indicator ~ ~ ~ 0.1 0 .1 0.5 20
execute at @e[tag=death-hilixer,scores={WizardryCooldown=100..}] run playsound minecraft:entity.turtle.egg_break voice Blue_future ~ ~ ~ 1 0
execute as @e[tag=death-hilixer,scores={WizardryCooldown=100..}] run kill @s
execute as @e[tag=death-hilixer] at @s unless entity @e[limit=1,distance=..1,tag=death-hilix] run kill @s
scoreboard players add @e[tag=death-hilixer] WizardryCooldown 1

execute at @e[tag=black-hole,scores={WizardryCooldown=..600}] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 200
execute at @e[tag=black-hole,scores={WizardryCooldown=..600}] run particle minecraft:nautilus ~ ~.3 ~ 0 0 0 1 10
execute at @e[tag=black-hole,scores={WizardryCooldown=60..}] as @e[distance=..20,tag=!black-hole,tag=!wizardry-entity] at @s facing entity @e[distance=..20,tag=black-hole,scores={WizardryCooldown=60..},limit=1] feet run tp @s ^ ^ ^.2
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run playsound minecraft:entity.ender_dragon.death voice @a ~ ~ ~ 5 0.1
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run kill @e[tag=!black-hole,distance=..20,gamemode=!creative,gamemode=!spectator]
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 1 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 1 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 1 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 1 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 1 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 1 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 1 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 1 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 1 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 31 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 31 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 31 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 31 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 31 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 31 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 31 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 31 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 31 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 62 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 62 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 62 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 62 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 62 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 62 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 62 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 62 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 62 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 93 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 93 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 93 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 93 ~ {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~ 93 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 93 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 93 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~-31 93 ~31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=black-hole,scores={WizardryCooldown=660..}] run summon armor_stand ~31 93 ~-31 {Tags:[black-hole-ex],Invisible:1b,NoGravity:1b,Marker:1b}
execute as @e[tag=black-hole,scores={WizardryCooldown=660..}] run kill @s
scoreboard players add @e[tag=black-hole] WizardryCooldown 1
execute at @e[tag=black-hole-ex] run fill ~-15 ~ ~-15 ~15 ~31 ~15 air
execute at @e[tag=black-hole-ex] run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 5 0.1
execute as @e[tag=black-hole-ex] run kill @s