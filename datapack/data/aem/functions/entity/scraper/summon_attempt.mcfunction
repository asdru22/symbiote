advancement revoke @s only aem:technical/entity/scraper/spawn
execute if predicate aem:chance/50 at @e[type=strider,sort=nearest,nbt={HurtTime:10s}] run function aem:commands/summon/scraper