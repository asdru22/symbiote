execute store result score .current aem.x run data get entity @s Rotation[0] 100
execute store result score .current aem.y run data get entity @s Rotation[1] 100

scoreboard players operation @s aem.x -= .current aem.x
execute if score @s aem.x matches ..0 run scoreboard players operation @s aem.x *= const.-1 aem.data
scoreboard players operation @s aem.y -= .current aem.y
execute if score @s aem.y matches ..0 run scoreboard players operation @s aem.y *= const.-1 aem.data

scoreboard players operation @s aem.x += @s aem.y 
execute if score @s aem.x matches 2000.. run function aem:entity/player/symbiote_leech/shake/shaking

execute store result score @s aem.x run data get entity @s Rotation[0] 100
execute store result score @s aem.y run data get entity @s Rotation[1] 100