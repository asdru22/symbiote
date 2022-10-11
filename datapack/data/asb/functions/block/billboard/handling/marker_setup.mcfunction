tag @s remove asb.setup
scoreboard players set @s asb.x 0
scoreboard players set @s asb.y 0
scoreboard players operation @s asb.id = .id asb.data
execute rotated as @s run function asb:block/billboard/handling/buttons
execute rotated as @s run function asb:block/billboard/handling/tree