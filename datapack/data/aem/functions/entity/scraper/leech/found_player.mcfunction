execute as @a[tag=!aem.scraper.ignore,distance=..2,limit=1,advancements={aem:technical/entity/scraper/hit_player=true}] run function aem:entity/scraper/leech/as_player
tp @s ~ ~-1000 ~
kill @s