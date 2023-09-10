data modify storage bow_attributes:player offhand set value {}
data modify storage bow_attributes:player offhand set from entity @s Inventory[{Slot:-106b}]

execute store result score $bow.do bow.crossbow.quick_charge.lvl run data get storage bow_attributes:player offhand.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl
scoreboard players add $bow.do bow.crossbow.quick_charge.lvl 3
scoreboard players operation @s bow.crossbow.aiming += $bow.do bow.crossbow.quick_charge.lvl

execute if entity @s[scores={bow.crossbow.aiming=135..145}] run function bow_attributes:crossbow/charge_offhand/crit