scoreboard players reset .move asb.data
scoreboard players operation .temp asb.data = @s asb.id
data remove storage asb:storage root.temp.string
execute as @e[type=slime,tag=asb.click,nbt={HurtTime:10s}] if score @s asb.id = .temp asb.data at @s positioned ~0.2 ~0.25 ~ run data modify storage asb:storage root.temp.string set from entity @e[type=armor_stand,distance=..0.1,limit=1,sort=nearest] ArmorItems[3].tag.asb.click
execute if data storage asb:storage root.temp.string run function asb:block/billboard/impl/clicking/select