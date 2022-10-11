execute if entity @s[tag=asb.billboard.place] run function asb:block/billboard/place/remove
kill @e[type=item,nbt={Item:{id:"minecraft:furnace"}}]
loot spawn ~ ~ ~ loot asb:block/billboard
kill @s