tag @s remove aem.setup 
data modify entity @s ArmorItems[3].tag.CustomModelData set from storage aem:storage root.temp.cmd
scoreboard players operation @s aem.id = .temp aem.data

#execute if data storage aem:storage root.temp{string:"crafting"}
#execute if data storage aem:storage root.temp{string:"content"}
#execute if data storage aem:storage root.temp{string:"credits"}