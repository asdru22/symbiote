### Custom Model Data
execute if entity @s[scores={aem.id=1}] run scoreboard players set .cmd aem.data 6900999

execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{aem:{symbiote_marker:1b}}}]}] unless data entity @s Inventory[{Slot:103b}].tag.aem.OldHelmet run function aem:entity/player/symbiote_leech/old_helmet_data

execute store result storage aem:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players operation .cmd aem.data += @s aem.symbiote
item modify entity @s armor.head aem:copy_nbt