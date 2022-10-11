execute if score .move asb.data matches 2 if score @s asb.x matches -450.. run scoreboard players remove @s asb.x 50
execute if score .move asb.data matches 1 if score @s asb.x matches ..450 run scoreboard players add @s asb.x 50
execute if score .move asb.data matches 3 if score @s asb.y matches -450.. run scoreboard players remove @s asb.y 50
execute if score .move asb.data matches 4 if score @s asb.y matches ..450 run scoreboard players add @s asb.y 50

scoreboard players set .override asb.data 1
execute positioned ~1 ~0.25 ~0.25 run function asb:block/billboard/impl/buttons/override
scoreboard players reset .override asb.data

execute positioned ~-0.4 ~-1 ~-1 run tag @e[type=armor_stand,tag=asb.display,dx=0,dy=2,dz=2] add asb.save
execute as @e[type=armor_stand,tag=asb.display,tag=asb.billboard] if score @s asb.id = .temp asb.data at @s run function asb:block/billboard/impl/buttons/clear
execute as @e[type=slime,tag=asb.click,tag=asb.setup] run function asb:block/billboard/handling/slime_setup