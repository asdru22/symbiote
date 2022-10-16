tag @s remove aem.setup
scoreboard players operation @s aem.id = .temp aem.data
execute if score .override aem.data matches 1 if entity @s[type=armor_stand] run function aem:block/billboard/impl/buttons/update_pos
execute unless score .override aem.data matches 1 if entity @s[type=slime] run data merge entity @s {Health:1000,Attributes:[{Name:"minecraft:generic.max_health",Base:1000}]}

execute if score .override aem.data matches 2 run function aem:block/billboard/handling/buttons/slime_on_activate