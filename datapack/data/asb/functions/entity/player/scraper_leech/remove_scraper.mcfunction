scoreboard players reset @s asb.data
execute anchored eyes positioned ^ ^ ^0.5 run summon vex ~ ~ ~ {Health:0f,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16593715,CustomModelData:6901000}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200000,ShowParticles:0b}]}
scoreboard players remove @s asb.scraper 1
tag @s[scores={asb.scraper=0..2}] add asb.scraper.target 
data remove storage asb:storage root.temp.item
execute if score @s asb.scraper matches 0 run function asb:entity/player/scraper_leech/no_scrapers
execute if score @s asb.scraper matches 1.. run function asb:entity/player/scraper_leech/has_helmet