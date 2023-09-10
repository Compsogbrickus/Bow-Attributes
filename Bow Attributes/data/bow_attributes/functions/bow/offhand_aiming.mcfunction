data modify storage bow_attributes:player mainhand set value {}
data modify storage bow_attributes:player mainhand set from entity @s SelectedItem

execute unless data storage bow_attributes:player mainhand{id:"minecraft:bow"} run tag @s add bow.offhand_aiming