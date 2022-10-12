execute store result score .motionX asb.data run data get entity @s Motion[0] 10000
execute store result score .motionZ asb.data run data get entity @s Motion[2] 10000
execute if predicate asb:entity/scraper/charge run function asb:entity/scraper/leech/found_player