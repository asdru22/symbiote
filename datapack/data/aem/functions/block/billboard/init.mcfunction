execute if entity @s[advancements={aem:technical/block/billboard={up=true}}] run scoreboard players set .move aem.data 1
execute if entity @s[advancements={aem:technical/block/billboard={down=true}}] run scoreboard players set .move aem.data 2
execute if entity @s[advancements={aem:technical/block/billboard={left=true}}] run scoreboard players set .move aem.data 3
execute if entity @s[advancements={aem:technical/block/billboard={right=true}}] run scoreboard players set .move aem.data 4

scoreboard players operation .temp aem.data = @s aem.id

execute if entity @s[advancements={aem:technical/block/billboard={click=true}}] run function aem:block/billboard/impl/clicking/main
execute if score .move aem.data matches 1..4 run function aem:block/billboard/impl/buttons/check


advancement revoke @s only aem:technical/block/billboard