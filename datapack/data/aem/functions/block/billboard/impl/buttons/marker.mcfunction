execute if score .move aem.data matches 2 if score @s aem.x matches -450.. run scoreboard players remove @s aem.x 50
execute if score .move aem.data matches 1 if score @s aem.x matches ..450 run scoreboard players add @s aem.x 50
execute if score .move aem.data matches 3 if score @s aem.y matches -450.. run scoreboard players remove @s aem.y 50
execute if score .move aem.data matches 4 if score @s aem.y matches ..450 run scoreboard players add @s aem.y 50

scoreboard players set .override aem.data 1
execute positioned ~1 ~0.25 ~0.25 run function aem:block/billboard/impl/buttons/override
scoreboard players reset .override aem.data

execute positioned ~-0.4 ~-1.25 ~-1 run tag @e[type=armor_stand,tag=aem.display,dx=0,dy=2,dz=2] add aem.save
execute as @e[type=armor_stand,tag=aem.display,tag=aem.billboard] if score @s aem.id = .temp aem.data at @s run function aem:block/billboard/impl/buttons/clear
execute as @e[type=slime,tag=aem.click,tag=aem.setup] run function aem:block/billboard/handling/slime_setup