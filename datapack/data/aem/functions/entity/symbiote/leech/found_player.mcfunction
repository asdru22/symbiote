execute as @a[tag=!aem.symbiote.ignore,distance=..2,limit=1,advancements={aem:technical/entity/symbiote_hit_player=true}] run function aem:entity/symbiote/leech/as_player
tp @s ~ ~-1000 ~
kill @s