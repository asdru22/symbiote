execute store result score .myX asb.data run data get entity @s Pos[0] 100
execute store result score .myY asb.data run data get entity @s Pos[1] 100
execute store result score .myZ asb.data run data get entity @s Pos[2] 100
scoreboard players remove .myX asb.data 50
scoreboard players operation .myZ asb.data += .x asb.data
scoreboard players operation .myY asb.data += .y asb.data
execute store result entity @s Pos[0] double 0.01 run scoreboard players get .myX asb.data
execute store result entity @s Pos[1] double 0.01 run scoreboard players get .myY asb.data
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .myZ asb.data
execute at @s run tp @s ~ ~ ~