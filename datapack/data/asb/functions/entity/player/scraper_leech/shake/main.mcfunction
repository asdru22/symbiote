execute store result score .current asb.x run data get entity @s Rotation[0] 100
execute store result score .current asb.y run data get entity @s Rotation[1] 100

scoreboard players operation @s asb.x -= .current asb.x
execute if score @s asb.x matches ..0 run scoreboard players operation @s asb.x *= const.-1 asb.data
scoreboard players operation @s asb.y -= .current asb.y
execute if score @s asb.y matches ..0 run scoreboard players operation @s asb.y *= const.-1 asb.data

scoreboard players operation @s asb.x += @s asb.y 
execute if score @s asb.x matches 2000.. run function asb:entity/player/scraper_leech/shake/shaking

execute store result score @s asb.x run data get entity @s Rotation[0] 100
execute store result score @s asb.y run data get entity @s Rotation[1] 100