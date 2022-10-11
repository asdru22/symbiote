scoreboard players operation .temp asb.data = @s asb.id
execute as @e[type=armor_stand,tag=asb.display] if score @s asb.id = .temp asb.data run function asb:block/billboard/impl/buttons/kill
execute as @e[type=marker,tag=asb.billboard.center,sort=nearest,limit=1] at @s if score @s asb.id = .temp asb.data align xyz run function asb:block/billboard/impl/buttons/marker