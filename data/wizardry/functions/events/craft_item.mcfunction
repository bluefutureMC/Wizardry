#Taggers
tag @a[nbt={Inventory:[{id:"minecraft:wooden_sword",Count:2b}]}] add craft-wand
tag @a[nbt={Inventory:[{id:"minecraft:wooden_sword",Count:3b}]}] add craft-absorber
tag @a[nbt={Inventory:[{id:"minecraft:wooden_sword",Count:4b}]}] add craft-totem

#Replacers
execute as @a[tag=craft-wand] run function wizardry:utility/clear_ws_2
execute as @a[tag=craft-wand] run function wizardry:items/wand/give

execute as @a[tag=craft-absorber] run function wizardry:utility/clear_ws_3
execute as @a[tag=craft-absorber] run function wizardry:blocks/essence_absorber/give

execute as @a[tag=craft-totem] run function wizardry:utility/clear_ws_4
execute as @a[tag=craft-totem] run function wizardry:blocks/magic_totem/give

#Tag Removers
tag @a remove craft-wand
tag @a remove craft-absorber
tag @a remove craft-totem