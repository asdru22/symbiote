execute as @a[tag=!aem.symbiote.ignore,distance=..2,limit=1,advancements={aem:technical/entity/symbiote_hit_player=true}] run function aem:entity/symbiote/leech/check_id
execute unless score .kill aem.data matches 1 run function aem:entity/symbiote/leech/kill