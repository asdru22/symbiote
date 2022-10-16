execute if entity @s[advancements={aem:technical/block/billboard/interact={up=true}}] run scoreboard players set .move aem.data 1
execute if entity @s[advancements={aem:technical/block/billboard/interact={down=true}}] run scoreboard players set .move aem.data 2
execute if entity @s[advancements={aem:technical/block/billboard/interact={left=true}}] run scoreboard players set .move aem.data 3
execute if entity @s[advancements={aem:technical/block/billboard/interact={right=true}}] run scoreboard players set .move aem.data 4

scoreboard players operation .temp aem.data = @s aem.id

execute if entity @s[advancements={aem:technical/block/billboard/interact={click=true}}] run function aem:block/billboard/impl/clicking/main
execute if score .move aem.data matches 1..4 run function aem:block/billboard/impl/buttons/check


advancement revoke @s only aem:technical/block/billboard/interact