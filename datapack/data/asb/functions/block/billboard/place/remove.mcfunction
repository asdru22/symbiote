scoreboard players operation .temp asb.data = @s asb.id
execute as @e[type=#asb:billboard,tag=asb.billboard] if score @s asb.id = .temp asb.data run function asb:block/billboard/impl/buttons/kill