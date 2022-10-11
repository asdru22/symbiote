execute as @e[type=slime,tag=asb.click] if score @s asb.id = .temp asb.data run function asb:block/billboard/impl/buttons/kill
execute if entity @s[tag=!asb.save] run function asb:block/billboard/impl/buttons/kill
tag @s remove asb.save

execute if data entity @s ArmorItems[3].tag.asb.click at @s run summon slime ~0.7 ~-0.25 ~ {Size:0,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asb.billboard","asb.click","asb.setup","asb.button"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}