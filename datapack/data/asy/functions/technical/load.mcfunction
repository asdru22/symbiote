scoreboard objectives add asy.data dummy
scoreboard objectives add asy.x dummy
scoreboard objectives add asy.y dummy
scoreboard objectives add asy.id dummy
scoreboard objectives add asy.symbiote dummy
scoreboard objectives add asy.max_symbiote dummy
scoreboard objectives add asy.symbiote_id dummy

scoreboard players set const.-1 asy.data -1

function asy:technical/20_ticks

execute positioned 3000000 0 2014 run forceload add ~ ~
setblock 3000000 0 2014 air
setblock 3000000 0 2014 barrel{Items:[{Slot:0b,id:"stone",Count:1b}]}