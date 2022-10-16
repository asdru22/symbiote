tag @s add aem.open_display
execute as @e[type=#aem:billboard,tag=aem.display] if score @s aem.id = .temp aem.data run function aem:block/billboard/impl/buttons/kill
execute as @e[type=marker,tag=aem.billboard.center] if score @s aem.id = .temp aem.data at @s run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["aem.billboard","aem.billboard.display","aem.setup"],ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b}]}

execute as @e[type=armor_stand,tag=aem.setup,tag=aem.billboard.display] run function aem:block/billboard/impl/clicking/display_setup