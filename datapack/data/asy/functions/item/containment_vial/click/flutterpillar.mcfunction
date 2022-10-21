scoreboard players set .temp asy.data 2
execute if predicate asy:player/sneaking run function asy:commands/summon/flutterpillar
execute unless predicate asy:player/sneaking run function asy:item/containment_vial/click/replace_head/main