execute if entity @s[scores={asb.scraper=1..}] run function asb:entity/player/scraper_leech/shake/main

execute if entity @s[predicate=asb:entity/scraper/spawn_conditions] positioned ~ ~5 ~ run function asb:commands/summon/scraper