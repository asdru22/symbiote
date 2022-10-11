scoreboard players operation .temp asb.data = @s asb.id

execute if data storage smithed.custom_block:main blockApi{id:"asb:billboard"} run function asb:block/billboard/block/place
