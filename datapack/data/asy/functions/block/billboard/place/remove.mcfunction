scoreboard players operation .temp asy.data = @s asy.id
execute as @e[type=#asy:billboard,tag=asy.billboard] if score @s asy.id = .temp asy.data run function asy:block/billboard/impl/buttons/kill