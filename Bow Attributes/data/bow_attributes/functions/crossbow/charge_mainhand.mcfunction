scoreboard players set $bow.do bow.crossbow.quick_charge.lvl 0
execute store result score $bow.do bow.crossbow.quick_charge.lvl run data get storage bow_attributes:player mainhand.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl

execute if score $bow.do bow.crossbow.quick_charge.lvl matches 0 run scoreboard players add @s bow.crossbow.aiming 3
execute if score $bow.do bow.crossbow.quick_charge.lvl matches 1 run scoreboard players add @s bow.crossbow.aiming 4
execute if score $bow.do bow.crossbow.quick_charge.lvl matches 2 run scoreboard players add @s bow.crossbow.aiming 5
execute if score $bow.do bow.crossbow.quick_charge.lvl matches 3 run scoreboard players add @s bow.crossbow.aiming 6
execute if score $bow.do bow.crossbow.quick_charge.lvl matches 4 run scoreboard players add @s bow.crossbow.aiming 7
execute if score $bow.do bow.crossbow.quick_charge.lvl matches 5 run scoreboard players add @s bow.crossbow.aiming 8

execute if entity @s[scores={bow.crossbow.aiming=135..145}] unless data storage bow_attributes:player mainhand{tag:{crit:1b}} unless data storage bow_attributes:player mainhand{tag:{ChargedProjectiles:[{}]}} run function bow_attributes:crossbow/crit_mainhand