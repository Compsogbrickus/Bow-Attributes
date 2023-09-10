data modify storage bow_attributes:player offhand set value {}
data modify storage bow_attributes:player offhand set from entity @s Inventory[{Slot:-106b}]

execute unless data storage bow_attributes:player offhand{id:"minecraft:firework_rocket"} run function bow_attributes:crossbow/charge_mainhand/do