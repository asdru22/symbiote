#execute if entity @s[tag=aem.scraper] if entity @a[tag=!aem.scraper.ignore,distance=..2,gamemode=!creative,gamemode=!spectator] run function aem:entity/scraper/tick
execute if entity @s[nbt={HurtTime:10s},tag=!aem.tint] run function aem:entity/custom/tint/apply
execute if entity @s[nbt={HurtTime:0s},tag=aem.tint] run function aem:entity/custom/tint/remove