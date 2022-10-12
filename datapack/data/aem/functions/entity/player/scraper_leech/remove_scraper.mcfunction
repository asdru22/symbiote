playsound aem:entity.scraper.throw hostile @a[distance=..10] ~ ~ ~
scoreboard players reset @s aem.data
execute anchored eyes positioned ^ ^ ^0.5 run summon vex ~ ~ ~ {Health:0f,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16593715,CustomModelData:6901000}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200000,ShowParticles:0b}]}
scoreboard players remove @s aem.scraper 1
tag @s[scores={aem.scraper=0..2}] remove aem.scraper.ignore 
data remove storage aem:storage root.temp.item
execute if score @s aem.scraper matches 0 run function aem:entity/player/scraper_leech/no_scrapers
execute if score @s aem.scraper matches 1.. run function aem:entity/player/scraper_leech/has_helmet