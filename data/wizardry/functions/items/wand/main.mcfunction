#Taggers
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}}}}] add wand
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}}}]}] add wand
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}}}]}] add essence-selection

tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:25}}}] add wand-fire
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:24}}}] add wand-water
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:23}}}] add wand-earth
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:22}}}] add wand-air
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:21}}}] add wand-electric
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:20}}}] add wand-life
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:19}}}] add wand-ice
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:18}}}] add wand-death
tag @a[tag=wand,nbt={SelectedItem:{tag:{Damage:17}}}] add wand-space

#Change essence
execute at @a[tag=essence-selection,scores={WizardryActive=0}] run function wizardry:items/wand/open_ui
execute as @a[tag=essence-selection,scores={WizardryActive=0}] run scoreboard players set @s WizardryActive 1

execute as @e[tag=ui_icons,type=armor_stand] at @s positioned ~ ~-1.5 ~ at @a[limit=1,scores={WizardryActive=1},distance=..1.3] run teleport @s ~ ~1.5 ~
execute as @e[tag=ui_ritual,type=armor_stand] at @s at @a[limit=1,scores={WizardryActive=1},distance=..1.3] run teleport @s ~ ~ ~

execute as @e[tag=ui,type=armor_stand] at @s unless entity @a[distance=..2,scores={WizardryActive=1}] run kill @s
execute as @a[tag=!essence-selection,scores={WizardryActive=1}] run scoreboard players set @s WizardryActive 0

execute as @a[scores={WizardryActive=0},tag=wand,tag=c2fire] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:25,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2water] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:24,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2earth] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:23,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2air] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:22,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2electric] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:21,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2life] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:20,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2ice] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:19,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2death] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:18,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1
execute as @a[scores={WizardryActive=0},tag=wand,tag=c2space] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Damage:17,Unbreakable:1b,HideFlags:63,display:{Name:"[{\"text\":\"Wizard's Wand\",\"color\":\"light_purple\",\"italic\":false}]"}} 1

#UI handlers
# Fire
execute as @e[tag=fire_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-10..10] run data merge entity @s {Glowing:1b}
execute as @e[tag=fire_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-10..10] run tag @s add c2fire

execute as @e[tag=fire_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-10..10] run data merge entity @s {Glowing:0b}
execute as @e[tag=fire_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-10..10] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2fire

# Water
execute as @e[tag=water_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=30..50] run data merge entity @s {Glowing:1b}
execute as @e[tag=water_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=30..50] run tag @s add c2water

execute as @e[tag=water_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=30..50] run data merge entity @s {Glowing:0b}
execute as @e[tag=water_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=30..50] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2water

# Earth
execute as @e[tag=earth_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-50..-30] run data merge entity @s {Glowing:1b}
execute as @e[tag=earth_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-50..-30] run tag @s add c2earth

execute as @e[tag=earth_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-50..-30] run data merge entity @s {Glowing:0b}
execute as @e[tag=earth_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-50..-30] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2earth

# Air
execute as @e[tag=air_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=70..90] run data merge entity @s {Glowing:1b}
execute as @e[tag=air_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=70..90] run tag @s add c2air

execute as @e[tag=air_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=70..90] run data merge entity @s {Glowing:0b}
execute as @e[tag=air_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=70..90] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2air

# Electric
execute as @e[tag=electric_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-90..-70] run data merge entity @s {Glowing:1b}
execute as @e[tag=electric_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-90..-70] run tag @s add c2electric

execute as @e[tag=electric_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-90..-70] run data merge entity @s {Glowing:0b}
execute as @e[tag=electric_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-90..-70] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2electric

# Life
execute as @e[tag=life_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=110..130] run data merge entity @s {Glowing:1b}
execute as @e[tag=life_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=110..130] run tag @s add c2life

execute as @e[tag=life_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=110..130] run data merge entity @s {Glowing:0b}
execute as @e[tag=life_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=110..130] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2life

# Ice
execute as @e[tag=ice_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-130..-110] run data merge entity @s {Glowing:1b}
execute as @e[tag=ice_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-130..-110] run tag @s add c2ice

execute as @e[tag=ice_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-130..-110] run data merge entity @s {Glowing:0b}
execute as @e[tag=ice_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-130..-110] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2ice

# Death
execute as @e[tag=death_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=150..170] run data merge entity @s {Glowing:1b}
execute as @e[tag=death_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=150..170] run tag @s add c2death

execute as @e[tag=death_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=150..170] run data merge entity @s {Glowing:0b}
execute as @e[tag=death_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=150..170] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2death

# Space
execute as @e[tag=space_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ if entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-170..-150] run data merge entity @s {Glowing:1b}
execute as @e[tag=space_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ as @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-170..-150] run tag @s add c2space

execute as @e[tag=space_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-170..-150] run data merge entity @s {Glowing:0b}
execute as @e[tag=space_icon,type=armor_stand] at @s positioned ~ ~-1.5 ~ unless entity @a[limit=1,scores={WizardryActive=1},distance=..1.3,x_rotation=-12.3..12.3,y_rotation=-170..-150] as @a[limit=1,scores={WizardryActive=1},distance=..1.3] run tag @s remove c2space

#Essence bar
execute as @e[tag=wand-fire] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"FireEssence"},"color":"red","obfuscated":false},{"text":" / 50 ","color":"red"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-water] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"WaterEssence"},"color":"blue","obfuscated":false},{"text":" / 50 ","color":"blue"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-earth] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"EarthEssence"},"color":"dark_green","obfuscated":false},{"text":" / 50 ","color":"dark_green"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-air] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"AirEssence"},"color":"aqua","obfuscated":false},{"text":" / 50 ","color":"aqua"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-electric] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"ElectricEssence"},"color":"yellow","obfuscated":false},{"text":" / 50 ","color":"yellow"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-life] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"LifeEssence"},"color":"light_purple","obfuscated":false},{"text":" / 50 ","color":"light_purple"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-ice] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"IceEssence"},"color":"white","obfuscated":false},{"text":" / 50 ","color":"white"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-death] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"DeathEssence"},"color":"black","obfuscated":false},{"text":" / 50 ","color":"black"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]
execute as @e[tag=wand-space] run title @s actionbar ["",{"text":"H","color":"gold","bold":true,"obfuscated":true},{"text":" "},{"score":{"name":"@s","objective":"SpaceEssence"},"color":"dark_purple","obfuscated":false},{"text":" / 50 ","color":"dark_purple"},{"text":"H","color":"gold","bold":true,"obfuscated":true}]