scoreboard objectives add asb.data dummy
scoreboard objectives add asb.x dummy
scoreboard objectives add asb.y dummy
scoreboard objectives add asb.id dummy
scoreboard objectives add asb.scraper dummy

scoreboard players set const.-1 asb.data -1

function asb:technical/20_ticks

execute positioned 3000000 0 2014 run forceload add ~ ~
setblock 3000000 0 2014 air
setblock 3000000 0 2014 barrel{Items:[{Slot:0b,id:"stone",Count:1b}]}