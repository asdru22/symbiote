advancement revoke @s only asb:technical/entity/scraper/spawn
execute if predicate asb:chance/50 at @e[type=strider,sort=nearest,nbt={HurtTime:10s}] run function asb:commands/summon/scraper