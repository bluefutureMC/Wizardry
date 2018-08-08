#Scores
scoreboard players set @a WizardryPlace 0
scoreboard players set @a WizardrySneak 0
scoreboard players set @a WizardryWand 0
scoreboard players remove @a[scores={WizardrySpell=1..}] WizardrySpell 1
scoreboard players set @a[tag=!wand] WizardryActive 0
scoreboard players set @a[tag=!earth-smash,tag=!cloud-walker,tag=!light-god,tag=!frozen,scores={WizardryCooldown=10..}] WizardryCooldown 0

#Tags
tag @a remove wand
tag @a remove essence-selection
tag @a remove wand-fire
tag @a remove wand-water
tag @a remove wand-earth
tag @a remove wand-air
tag @a remove wand-electric
tag @a remove wand-life
tag @a remove wand-ice
tag @a remove wand-death
tag @a remove wand-space

#Player Score Initializer
scoreboard players add @a WizardrySpell 0
scoreboard players add @a FireEssence 0
scoreboard players add @a WaterEssence 0
scoreboard players add @a EarthEssence 0
scoreboard players add @a AirEssence 0
scoreboard players add @a IceEssence 0
scoreboard players add @a LifeEssence 0
scoreboard players add @a ElectricEssence 0
scoreboard players add @a DeathEssence 0
scoreboard players add @a SpaceEssence 0