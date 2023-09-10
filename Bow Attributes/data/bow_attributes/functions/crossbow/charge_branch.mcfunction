data modify storage bow_attributes:player mainhand set value {}
data modify storage bow_attributes:player mainhand set from entity @s SelectedItem

scoreboard players set $bow.do bow.crossbow.hand 0
execute store result score $bow.do bow.crossbow.hand if data storage bow_attributes:player mainhand{id:"minecraft:crossbow"}
execute if score @s bow.crossbow.aiming matches 1 unless score $bow.do bow.crossbow.hand matches 1 run tag @s add bow.offhand_aiming

execute if score $bow.do bow.crossbow.hand matches 1 if entity @s[tag=!bow.offhand_aiming] run function bow_attributes:crossbow/charge_mainhand/firework_check
execute if score $bow.do bow.crossbow.hand matches 1 if entity @s[tag=bow.offhand_aiming] run function bow_attributes:crossbow/charge_offhand/firework_check
execute if score $bow.do bow.crossbow.hand matches 0 run function bow_attributes:crossbow/charge_offhand/firework_check