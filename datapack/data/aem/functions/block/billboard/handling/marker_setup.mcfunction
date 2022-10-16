tag @s remove aem.setup
scoreboard players set @s aem.x 0
scoreboard players set @s aem.y 0
scoreboard players operation @s aem.id = .temp aem.data
execute rotated as @s run function aem:block/billboard/handling/buttons