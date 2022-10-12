scoreboard players add @s aem.scraper 1
execute if score @s aem.scraper matches 3.. run tag @s add aem.scraper.ignore

playsound aem:entity.scraper.leech hostile @a[distance=..10] ~ ~ ~ 2 0.85

execute if data entity @s Inventory[{Slot:103b}].Count run function aem:entity/player/scraper_leech/has_helmet

execute unless data entity @s Inventory[{Slot:103b}].Count run item replace entity @s armor.head with recovery_compass{CustomModelData:6901000,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],HideFlags:127,aem:{scraper_marker:1b},display:{Name:'{"translate":"entity.aem.scraper.draning","color": "red","italic": false}',Lore: ['{"translate": "entity.aem.scraper.shake","color":"white","italic": false}']}} 