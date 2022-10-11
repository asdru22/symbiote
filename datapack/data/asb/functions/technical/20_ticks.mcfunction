execute as @e[type=slime,tag=asb.billboard] run data merge entity @s {ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}

execute as @a at @s run function asb:entity/player/20_ticks

schedule function asb:technical/20_ticks 1s replace