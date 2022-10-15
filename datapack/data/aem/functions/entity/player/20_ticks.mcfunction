execute if entity @s[scores={aem.symbiote=1..}] run function aem:entity/player/symbiote_leech/20_ticks

execute as @e[type=!vex,type=!#aem:technical,distance=..20,predicate=aem:chance/4] if data entity @s ActiveEffects[{Id:20}] at @s run function aem:entity/symbiote/spawn/main