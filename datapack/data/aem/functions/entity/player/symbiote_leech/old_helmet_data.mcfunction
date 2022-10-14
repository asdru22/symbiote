data modify storage aem:storage root.temp.item.tag set value {Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127,Unbreakable:1b}
data modify storage aem:storage root.temp.item.tag.aem.OldHelmet set from entity @s Inventory[{Slot:103b}]
data remove storage aem:storage root.temp.item.tag.aem.OldHelmet.Slot
data modify storage aem:storage root.temp.item.tag.display.color set from storage aem:storage root.temp.item.tag.aem.OldHelmet.tag.display.color

function aem:entity/symbiote/helmet_handling

item replace entity @s armor.head from block 3000000 0 2014 container.0