execute if entity @s[tag=aem.billboard.place] run function aem:block/billboard/place/remove
kill @e[type=item,nbt={Item:{id:"minecraft:furnace"}}]
loot spawn ~ ~ ~ loot aem:block/billboard
kill @s