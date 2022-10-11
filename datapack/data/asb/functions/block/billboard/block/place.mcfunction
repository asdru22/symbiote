summon armor_stand ~ ~-0.5 ~ {Marker:1b,Invisible:1b,Tags:["asb.entity","asb.block","asb.block.billboard","asb.setup"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:6901000}}]}
setblock ~ ~ ~ furnace{Lock:"\\uf001asb.billboard",CustomName:'{"translate":"block.asb.billboard"}'}

execute as @e[type=armor_stand,tag=asb.block.billboard,tag=asb.setup] run function asb:block/billboard/block/setup