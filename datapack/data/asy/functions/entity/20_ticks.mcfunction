execute if entity @s[type=slime,tag=asy.billboard] run data merge entity @s {ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}

execute if entity @s[tag=asy.block.billboard,tag=!asy.billboard.place] run function asy:block/billboard/block/20_ticks