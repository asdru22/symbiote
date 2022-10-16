summon armor_stand ~ ~ ~ {Tags:["aem.billboard","aem.display","aem.setup"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:6901000,aem:{click:"test"}}}]}
summon armor_stand ~ ~0.5 ~ {Tags:["aem.billboard","aem.display","aem.setup"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:6901000,aem:{click:"balls"}}}]}
summon armor_stand ~ ~ ~0.5 {Tags:["aem.billboard","aem.display","aem.setup"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:6901000,aem:{click:"amog"}}}]}

execute as @e[type=#aem:billboard,tag=aem.billboard] run function aem:block/billboard/handling/setup