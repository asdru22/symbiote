playsound asy:entity.symbiote.throw hostile @a[distance=..10] ~ ~ ~
scoreboard players reset @s asy.data

function asy:entity/player/symbiote_leech/throw

scoreboard players remove @s asy.symbiote 1
execute if score @s asy.symbiote < @s asy.max_symbiote run tag @s remove asy.symbiote.ignore 

data remove storage asy:storage root.temp.item
execute if score @s asy.symbiote matches 0 run function asy:entity/player/symbiote_leech/no_symbiote
execute if score @s asy.symbiote matches 1.. run function asy:entity/player/symbiote_leech/has_helmet

execute if entity @s[scores={asy.symbiote=0}] run function asy:entity/player/symbiote_leech/reset