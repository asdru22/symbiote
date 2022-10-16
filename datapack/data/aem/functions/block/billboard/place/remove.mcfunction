scoreboard players operation .temp aem.data = @s aem.id
execute as @e[type=#aem:billboard,tag=aem.billboard] if score @s aem.id = .temp aem.data run function aem:block/billboard/impl/buttons/kill