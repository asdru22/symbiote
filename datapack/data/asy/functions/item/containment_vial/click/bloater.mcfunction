scoreboard players set .temp asy.data 4
execute if predicate asy:player/sneaking run function asy:commands/summon/bloater
execute unless predicate asy:player/sneaking unless predicate asy:item/glass_visor run function asy:item/containment_vial/click/replace_head/main
clear @s warped_fungus_on_a_stick{asy:{VialEntity:"asy:bloater"}}