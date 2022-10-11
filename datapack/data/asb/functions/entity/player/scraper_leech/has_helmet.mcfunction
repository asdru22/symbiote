scoreboard players set .cmd asb.data 6900999
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{asb:{scraper_marker:1b}}}]}] unless data entity @s Inventory[{Slot:103b}].tag.asb.OldHelmet run function asb:entity/player/scraper_leech/old_helmet_data

execute store result storage asb:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players operation .cmd asb.data += @s asb.scraper
item modify entity @s armor.head asb:copy_nbt