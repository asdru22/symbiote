data modify storage aem:storage root.temp.item.tag set value {Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127,Unbreakable:1b}
data modify storage aem:storage root.temp.item.tag.aem.OldHelmet set from entity @s Inventory[{Slot:103b}]
data remove storage aem:storage root.temp.item.tag.aem.OldHelmet.Slot
data modify storage aem:storage root.temp.item.tag.display.color set from storage aem:storage root.temp.item.tag.aem.OldHelmet.tag.display.color
item modify block 3000000 0 2014 container.0 aem:player/scrapers

execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:leather_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:leather_horse_armor"
execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:chainmail_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:chain"
execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:golden_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:gold_ingot"
execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:iron_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:iron_ingot"
execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:diamond_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:diamond"
execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:netherite_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:netherite_ingot"
execute if data storage aem:storage root.temp.item.tag.aem.OldHelmet{id:"minecraft:turtle_helmet"} run data modify block 3000000 0 2014 Items[0].id set value "minecraft:scute"

item replace entity @s armor.head from block 3000000 0 2014 container.0