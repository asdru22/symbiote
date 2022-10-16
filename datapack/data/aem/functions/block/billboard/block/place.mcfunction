summon armor_stand ~ ~-0.5 ~ {Marker:1b,Invisible:1b,Tags:["aem.entity","aem.block","aem.block.billboard","aem.setup"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:6901000}}]}
setblock ~ ~ ~ furnace{Lock:"\\uf001aem.billboard",CustomName:'{"translate":"block.aem.billboard"}'}

execute as @e[type=armor_stand,tag=aem.block.billboard,tag=aem.setup] run function aem:block/billboard/block/setup