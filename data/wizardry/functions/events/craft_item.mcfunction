#Taggers
tag @a[nbt={Inventory:[{id:"minecraft:wooden_sword",Count:2b}]}] add craft-wand
tag @a[nbt={Inventory:[{id:"minecraft:wooden_sword",Count:3b}]}] add craft-absorber

#Replacers
execute as @a[tag=craft-wand] run function wizardry:utility/clear_ws_2
execute as @a[tag=craft-wand] run function wizardry:items/wand/give

execute as @a[tag=craft-absorber] run function wizardry:utility/clear_ws_3
execute as @a[tag=craft-absorber] run function wizardry:blocks/essence_absorber/give

#Tag Removers
tag @a remove craft-wand
tag @a remove craft-absorber