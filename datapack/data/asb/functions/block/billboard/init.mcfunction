execute if entity @s[advancements={asb:technical/block/billboard={up=true}}] run scoreboard players set .move asb.data 1
execute if entity @s[advancements={asb:technical/block/billboard={down=true}}] run scoreboard players set .move asb.data 2
execute if entity @s[advancements={asb:technical/block/billboard={left=true}}] run scoreboard players set .move asb.data 3
execute if entity @s[advancements={asb:technical/block/billboard={right=true}}] run scoreboard players set .move asb.data 4

execute if entity @s[advancements={asb:technical/block/billboard={click=true}}] run function asb:block/billboard/impl/clicking/main
execute if score .move asb.data matches 1..4 run function asb:block/billboard/impl/buttons/move


advancement revoke @s only asb:technical/block/billboard