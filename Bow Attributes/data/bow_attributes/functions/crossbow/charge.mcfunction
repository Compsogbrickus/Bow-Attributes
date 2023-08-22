scoreboard players set $bow.do bow.crossbow.hand 0
execute store result score $bow.do bow.crossbow.hand if data storage bow_attributes:player mainhand{id:"minecraft:crossbow"}

execute if score $bow.do bow.crossbow.hand matches 1 if entity @s[tag=!bow.crossbow.offhand_charging] run function bow_attributes:crossbow/charge_mainhand
execute if score $bow.do bow.crossbow.hand matches 1 if entity @s[tag=bow.crossbow.offhand_charging] run function bow_attributes:crossbow/charge_offhand
execute if score $bow.do bow.crossbow.hand matches 0 run function bow_attributes:crossbow/charge_offhand