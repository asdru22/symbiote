tag @s remove aem.setup
scoreboard players set @s aem.x 0
scoreboard players set @s aem.y 0
scoreboard players operation @s aem.id = .temp aem.data
scoreboard players set .override aem.data 2
execute rotated as @s run function aem:block/billboard/handling/buttons
execute rotated as @s run function aem:block/billboard/handling/tree
scoreboard players reset .override aem.data