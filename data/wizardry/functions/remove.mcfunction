#End
function wizardry:end

#Scores
scoreboard objectives remove FireEssence
scoreboard objectives remove WaterEssence
scoreboard objectives remove EarthEssence
scoreboard objectives remove AirEssence
scoreboard objectives remove IceEssence
scoreboard objectives remove LifeEssence
scoreboard objectives remove ElectricEssence
scoreboard objectives remove DeathEssence
scoreboard objectives remove SpaceEssence

scoreboard objectives remove WizardryWand
scoreboard objectives remove WizardrySneak
scoreboard objectives remove WizardryPlace
scoreboard objectives remove WizardryCooldown
scoreboard objectives remove WizardryStruct
scoreboard objectives remove WizardryActive
scoreboard objectives remove WizardrySpell
scoreboard objectives remove MotionX
scoreboard objectives remove MotionY
scoreboard objectives remove MotionZ
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove LastGM

#Entitys
kill @e[tag=wizardry-entity]

#Tags
tag @a remove wizardry-init