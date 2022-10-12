execute as @a[tag=!asb.scraper.ignore,distance=..2,limit=1,advancements={asb:technical/entity/scraper/hit_player=true}] run function asb:entity/scraper/leech/as_player
tp @s ~ ~-1000 ~
kill @s