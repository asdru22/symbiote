execute store result score .myX aem.data run data get entity @s Pos[0] 100
execute store result score .myY aem.data run data get entity @s Pos[1] 100
execute store result score .myZ aem.data run data get entity @s Pos[2] 100
scoreboard players remove .myX aem.data 50
scoreboard players operation .myZ aem.data += .x aem.data
scoreboard players operation .myY aem.data += .y aem.data
execute store result entity @s Pos[0] double 0.01 run scoreboard players get .myX aem.data
execute store result entity @s Pos[1] double 0.01 run scoreboard players get .myY aem.data
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .myZ aem.data
execute at @s run tp @s ~ ~ ~