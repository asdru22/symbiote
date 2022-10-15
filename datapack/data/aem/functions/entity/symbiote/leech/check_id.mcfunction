execute if score @s aem.id matches 1.. if score @s aem.id = id aem.data run function aem:entity/symbiote/leech/as_player
execute unless score @s aem.id matches 1.. run function aem:entity/symbiote/leech/as_player
execute if score @s aem.id matches 1.. unless score @s aem.id = .id aem.data run scoreboard players set .kill aem.data 1