## Leech effects
execute if entity @s[scores={asy.symbiote_id=1}] run function asy:entity/scraper/leech_effects
execute if entity @s[scores={asy.symbiote_id=2}] run function asy:entity/flutterpillar/leech_effects

## Shake values
scoreboard players remove @s[scores={asy.data=1..}] asy.data 10
scoreboard players set @s[scores={asy.data=..0}] asy.data 0