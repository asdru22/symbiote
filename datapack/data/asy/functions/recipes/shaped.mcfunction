execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,item_tag:["#minecraft:wooden_slabs"]},{Slot:1b,item_tag:["#minecraft:wooden_slabs"]},{Slot:2b,item_tag:["#minecraft:wooden_slabs"]}],1:[{Slot:0b,item_tag:["#minecraft:signs"]},{Slot:1b,id:"minecraft:barrel"},{Slot:2b,item_tag:["#minecraft:signs"]}],2:[{Slot:0b,item_tag:["#minecraft:wooden_slabs"]},{Slot:1b,item_tag:["#minecraft:wooden_slabs"]},{Slot:2b,item_tag:["#minecraft:wooden_slabs"]}]} run loot replace block ~ ~ ~ container.16 loot asy:block/billboard

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,item_tag:["#minecraft:wooden_buttons"]},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:glass_pane"},{Slot:1b,tag:{smithed:{id:"asy:symbiotic_glass"}}},{Slot:2b,id:"minecraft:glass_pane"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:glass_pane"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot asy:item/containment_vial

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:glass_pane"},{Slot:1b,id:"minecraft:recovery_compass",tag:{smithed:{id:"asy:symbiotic_glass"}}},{Slot:2b,id:"minecraft:glass_pane"}],1:[{Slot:0b,id:"minecraft:recovery_compass",tag:{smithed:{id:"asy:symbiotic_glass"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:recovery_compass",tag:{smithed:{id:"asy:symbiotic_glass"}}}]} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot asy:item/glass_visor

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{smithed:{id:"asy:fleshy_tentacle"}}},{Slot:2b,tag:{smithed:{id:"asy:fleshy_tentacle"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{smithed:{id:"asy:fleshy_tentacle"}}}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,tag:{smithed:{id:"asy:fleshy_tentacle"}}},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot asy:item/flesh_whip