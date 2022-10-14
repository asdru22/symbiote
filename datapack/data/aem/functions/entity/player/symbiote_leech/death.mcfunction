execute store result score .keepInv aem.data run gamerule keepInventory
execute if score .keepInv aem.data matches 1 run function aem:entity/player/symbiote_leech/no_symbiote
execute if score .keepInv aem.data matches 0 as @e[type=item,nbt={Item:{tag:{Unbreakable:1b,HideFlags:127}}}] if data entity @s Item.tag.aem.OldHelmet run data modify entity @s Item set from entity @s Item.tag.aem.OldHelmet

advancement revoke @s only aem:technical/player/die_with_symbiotes
scoreboard players reset @s aem.symbiote
scoreboard players set @s aem.symbiote 0
tag @s remove aem.symbiote.ignore