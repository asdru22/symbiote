## Leech effects
execute if entity @s[scores={aem.symbiote_id=1}] run function aem:entity/scraper/leech_effects
execute if entity @s[scores={aem.symbiote_id=2}] run function aem:entity/flutterpillar/leech_effects

## Shake values
scoreboard players remove @s[scores={aem.data=1..}] aem.data 10
scoreboard players set @s[scores={aem.data=..0}] aem.data 0