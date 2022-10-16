execute as @e[type=slime,tag=aem.click] if score @s aem.id = .temp aem.data run function aem:block/billboard/impl/buttons/kill
execute if entity @s[tag=!aem.save] run function aem:block/billboard/impl/buttons/kill
tag @s remove aem.save

execute if data entity @s ArmorItems[3].tag.aem.click at @s run summon slime ~0.7 ~-0.25 ~ {Size:0,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["aem.billboard","aem.click","aem.setup","aem.button","aem.display"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}