summon vex ~ ~ ~ {CustomName:'{"translate":"entity.aem.scraper","italic":false}',Silent:1b,Tags:["aem.scraper","aem.symbiote","aem.entity","aem.entity.custom","aem.setup","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16777215,CustomModelData:6901000}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200000,ShowParticles:0b}],ArmorDropChances:[-1000.00f,-1000.00f,-1000.00f,-1000.00f],Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1}]}

execute as @e[type=vex,tag=aem.scraper,tag=aem.setup] run function aem:entity/scraper/setup
