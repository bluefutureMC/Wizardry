#Sound
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~

#Ability
summon minecraft:fireball ~3 ~10 ~3 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~3 ~10 ~ {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~ ~10 ~3 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~-3 ~10 ~3 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~-3 ~10 ~ {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~3 ~10 ~-3 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~ ~10 ~-3 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]} 
summon minecraft:fireball ~-3 ~10 ~-3 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~5 ~10 ~5 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~5 ~10 ~ {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~ ~10 ~5 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~-5 ~10 ~5 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~-5 ~10 ~ {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~5 ~10 ~-5 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
summon minecraft:fireball ~ ~10 ~-5 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]} 
summon minecraft:fireball ~-5 ~10 ~-5 {direction:[0.0,-2.0,0.0],Tags:[fire-rain]}
scoreboard players set @s WizardrySpell 10

#Consum
scoreboard players remove @s FireEssence 10