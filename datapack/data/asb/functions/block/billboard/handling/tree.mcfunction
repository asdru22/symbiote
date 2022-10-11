summon armor_stand ~ ~ ~ {Tags:["asb.billboard","asb.display","asb.setup"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:6901000,asb:{click:"test"}}}]}
summon armor_stand ~ ~0.5 ~ {Tags:["asb.billboard","asb.display","asb.setup"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:6901000,asb:{click:"balls"}}}]}
summon armor_stand ~ ~ ~0.5 {Tags:["asb.billboard","asb.display","asb.setup"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:6901000,asb:{click:"amog"}}}]}

execute as @e[type=#asb:billboard,tag=asb.billboard] run function asb:block/billboard/handling/setup