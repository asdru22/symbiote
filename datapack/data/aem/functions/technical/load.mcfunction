scoreboard objectives add aem.data dummy
scoreboard objectives add aem.x dummy
scoreboard objectives add aem.y dummy
scoreboard objectives add aem.id dummy
scoreboard objectives add aem.symbiote dummy
scoreboard objectives add aem.max_symbiote dummy
scoreboard objectives add aem.symbiote_id dummy

scoreboard players set const.-1 aem.data -1

function aem:technical/20_ticks

execute positioned 3000000 0 2014 run forceload add ~ ~
setblock 3000000 0 2014 air
setblock 3000000 0 2014 barrel{Items:[{Slot:0b,id:"stone",Count:1b}]}