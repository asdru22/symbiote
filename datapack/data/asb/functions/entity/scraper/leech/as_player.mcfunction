scoreboard players add @s asb.scraper 1
execute if score @s asb.scraper matches 3.. run tag @s add asb.scraper.ignore

playsound asb:entity.scraper.leech hostile @a[distance=..10] ~ ~ ~ 2 0.85

execute if data entity @s Inventory[{Slot:103b}].Count run function asb:entity/player/scraper_leech/has_helmet

execute unless data entity @s Inventory[{Slot:103b}].Count run item replace entity @s armor.head with recovery_compass{CustomModelData:6901000,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127,asb:{scraper_marker:1b},display:{Name:'{"translate":"entity.asb.scraper.draning","color": "red","italic": false}',Lore: ['{"translate": "entity.asb.scraper.shake","color":"white","italic": false}']}} 