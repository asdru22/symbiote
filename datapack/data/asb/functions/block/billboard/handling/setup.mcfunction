tag @s remove asb.setup
scoreboard players operation @s asb.id = .id asb.data
execute if score .override asb.data matches 1 if entity @s[type=armor_stand] run function asb:block/billboard/impl/buttons/update_pos
execute unless score .override asb.data matches 1 if entity @s[type=slime] run data merge entity @s {Health:1000,Attributes:[{Name:"minecraft:generic.max_health",Base:1000}]}