title @s actionbar ""
stopsound @a * minecraft:block.chest.locked
scoreboard players operation .temp asy.data = @s asy.id

execute as @e[type=armor_stand,tag=asy.block.billboard,tag=!asy.billboard.place] if score @s asy.id = .temp asy.data at @s if block ~ ~1 ~ #minecraft:impermeable if block ~ ~5 ~ #minecraft:impermeable if block ~ ~3 ~2 #minecraft:impermeable if block ~ ~3 ~-2 #minecraft:impermeable if block ~ ~2 ~-1 #minecraft:walls if block ~ ~2 ~ #minecraft:walls if block ~ ~2 ~1 #minecraft:walls if block ~ ~3 ~-1 #minecraft:walls if block ~ ~3 ~ #minecraft:walls if block ~ ~3 ~1 #minecraft:walls if block ~ ~4 ~-1 #minecraft:walls if block ~ ~4 ~ #minecraft:walls if block ~ ~4 ~1 #minecraft:walls run function asy:block/billboard/place/generate

advancement revoke @s only asy:technical/block/billboard/activate