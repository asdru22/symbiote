particle minecraft:block redstone_block ~ ~ ~ 0 0.5 0 0.05 10 normal
execute if entity @s[type=#aem:undead] run function aem:commands/summon/scraper
execute if entity @s[type=#aem:flying] run function aem:commands/summon/flutterpillar