playsound aem:entity.symbiote.throw hostile @a[distance=..10] ~ ~ ~
scoreboard players reset @s aem.data

function aem:entity/player/symbiote_leech/throw

scoreboard players remove @s aem.symbiote 1
execute if score @s aem.symbiote < @s aem.max_symbiotes run tag @s remove aem.symbiote.ignore 
execute if entity @s[scores={aem.symbiote=0}] run function aem:entity/player/symbiote_leech/reset

data remove storage aem:storage root.temp.item
execute if score @s aem.symbiote matches 0 run function aem:entity/player/symbiote_leech/no_symbiote
execute if score @s aem.symbiote matches 1.. run function aem:entity/player/symbiote_leech/has_helmet