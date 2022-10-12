execute store result score .keepInv asb.data run gamerule keepInventory
execute if score .keepInv asb.data matches 1 run function asb:entity/player/scraper_leech/no_scrapers
execute if score .keepInv asb.data matches 0 as @e[type=item,nbt={Item:{tag:{Unbreakable:1b,HideFlags:127}}}] if data entity @s Item.tag.asb.OldHelmet run data modify entity @s Item set from entity @s Item.tag.asb.OldHelmet

advancement revoke @s only asb:technical/player/die_with_scrapers
scoreboard players reset @s asb.scraper
tag @s remove asb.scraper.ignore