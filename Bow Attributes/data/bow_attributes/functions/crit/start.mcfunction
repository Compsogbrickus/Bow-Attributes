data modify storage bow_attributes:player mainhand set value {}
data modify storage bow_attributes:player mainhand set from entity @s SelectedItem
data modify storage bow_attributes:player offhand set value {}
data modify storage bow_attributes:player offhand set from entity @s Inventory[{Slot:-106b}]

scoreboard players set @s[tag=!bow.bow.aiming] bow.bow.aiming 0
scoreboard players add @s[tag=bow.bow.aiming] bow.bow.aiming 1

scoreboard players set @s[tag=!bow.crossbow.aiming] bow.crossbow.aiming 0
tag @s[tag=!bow.crossbow.aiming] remove bow.crossbow.offhand_charging

execute at @s[tag=bow.crossbow.aiming] unless data storage bow_attributes:player mainhand{id:"minecraft:firework_rocket"} unless data storage bow_attributes:player offhand{id:"minecraft:firework_rocket"} run function bow_attributes:crossbow/charge

execute at @s[scores={bow.bow.aiming=18}] run playsound minecraft:item.crossbow.quick_charge_3 player @s ~ ~ ~ 1 1 0

scoreboard players set @s[scores={bow.crossbow.aiming=135..}] bow.crossbow.aiming 0