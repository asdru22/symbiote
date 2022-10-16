execute as @e[type=slime,tag=aem.button] if score @s aem.id = .temp aem.data run data merge entity @s {Glowing:0b}

execute if entity @s[tag=!aem.open_display] run function aem:block/billboard/impl/buttons/move
execute if entity @s[tag=aem.open_display] run function aem:block/billboard/impl/buttons/close_display