scoreboard players reset .move aem.data
data remove storage aem:storage root.temp.string
execute as @e[type=slime,tag=aem.click,nbt={HurtTime:10s}] if score @s aem.id = .temp aem.data at @s positioned ~0.2 ~0.25 ~ run data modify storage aem:storage root.temp.string set from entity @e[type=armor_stand,distance=..0.1,limit=1,sort=nearest] ArmorItems[3].tag.aem.click
execute if data storage aem:storage root.temp.string run function aem:block/billboard/impl/clicking/select