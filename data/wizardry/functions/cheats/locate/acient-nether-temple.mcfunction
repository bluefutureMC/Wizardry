execute unless entity @e[tag=wsANT] run tellraw @s {"text":"Could not find that structure nearby","color":"red"}
execute if entity @e[tag=wsANT] store result score @e[tag=wsANT,limit=1,sort=nearest] PosX run data get entity @e[tag=wsANT,limit=1,sort=nearest] Pos[0] 1
execute if entity @e[tag=wsANT] store result score @e[tag=wsANT,limit=1,sort=nearest] PosY run data get entity @e[tag=wsANT,limit=1,sort=nearest] Pos[1] 1
execute if entity @e[tag=wsANT] store result score @e[tag=wsANT,limit=1,sort=nearest] PosZ run data get entity @e[tag=wsANT,limit=1,sort=nearest] Pos[2] 1
execute if entity @e[tag=wsANT] run tellraw @s [{"text":"The nearest Acient Nether Temple is at "},{"text":"[","color":"green"},{"score":{"objective":"PosX","name":"@e[tag=wsANT,limit=1,sort=nearest]"},"color":"green"},{"text":", ","color":"green"},{"score":{"objective":"PosY","name":"@e[tag=wsANT,limit=1,sort=nearest]"},"color":"green"},{"text":", ","color":"green"},{"score":{"objective":"PosZ","name":"@e[tag=wsANT,limit=1,sort=nearest]"},"color":"green"},{"text":"]","color":"green"}]