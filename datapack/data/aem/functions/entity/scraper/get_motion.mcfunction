execute store result score .motionX aem.data run data get entity @s Motion[0] 10000
execute store result score .motionZ aem.data run data get entity @s Motion[2] 10000
execute if predicate aem:entity/scraper/charge run function aem:entity/scraper/leech/found_player