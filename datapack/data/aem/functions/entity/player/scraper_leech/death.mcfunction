execute store result score .keepInv aem.data run gamerule keepInventory
execute if score .keepInv aem.data matches 1 run function aem:entity/player/scraper_leech/no_scrapers
execute if score .keepInv aem.data matches 0 as @e[type=item,nbt={Item:{tag:{Unbreakable:1b,HideFlags:127}}}] if data entity @s Item.tag.aem.OldHelmet run data modify entity @s Item set from entity @s Item.tag.aem.OldHelmet

advancement revoke @s only aem:technical/player/die_with_scrapers
scoreboard players reset @s aem.scraper
tag @s remove aem.scraper.ignore