execute if entity @s[tag=asb.scraper] if entity @a[tag=!asb.scraper.ignore,distance=..2,gamemode=!creative,gamemode=!spectator] run function asb:entity/scraper/tick
execute if entity @s[nbt={HurtTime:10s},tag=!asb.tint] run function asb:entity/custom/tint/apply
execute if entity @s[nbt={HurtTime:0s},tag=asb.tint] run function asb:entity/custom/tint/remove