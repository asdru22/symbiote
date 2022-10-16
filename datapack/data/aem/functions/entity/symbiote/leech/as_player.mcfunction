scoreboard players add @s aem.symbiote 1
scoreboard players reset .kill aem.data

execute unless score @s aem.max_symbiote matches 1.. run function aem:entity/symbiote/leech/set_max

execute if score @s aem.symbiote > @s aem.max_symbiote run function aem:entity/player/has_max_symbiotes

playsound aem:entity.symbiote.leech hostile @a[distance=..10] ~ ~ ~ 2 0.85

execute if data entity @s Inventory[{Slot:103b}].Count run function aem:entity/player/symbiote_leech/has_helmet

execute unless data entity @s Inventory[{Slot:103b}].Count run function aem:entity/player/symbiote_leech/no_helmet