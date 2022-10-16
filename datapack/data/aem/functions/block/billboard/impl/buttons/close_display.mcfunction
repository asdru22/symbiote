execute as @e[type=armor_stand,tag=aem.billboard.display] if score @s aem.id = .temp aem.data run kill @s
tag @s remove aem.open_display
scoreboard players reset .move aem.data
execute as @e[type=marker,tag=aem.billboard.center,sort=nearest,limit=1] at @s if score @s aem.id = .temp aem.data align xyz run function aem:block/billboard/impl/buttons/marker