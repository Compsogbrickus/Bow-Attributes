scoreboard players set @s[tag=!bow.bow.aiming] bow.bow.aiming 0
scoreboard players add @s[tag=bow.bow.aiming] bow.bow.aiming 1
execute if score @s bow.bow.aiming matches 1.. run function bow_attributes:bow/offhand_aiming

scoreboard players set @s[tag=!bow.crossbow.aiming] bow.crossbow.aiming 0
tag @s[tag=!bow.crossbow.aiming] remove bow.crossbow.crit
execute if entity @s[tag=bow.crossbow.aiming,tag=!bow.crossbow.crit] run function bow_attributes:crossbow/charge_branch

execute as @s[scores={bow.bow.aiming=18}] run playsound minecraft:item.crossbow.quick_charge_3 player @s ~ ~ ~ 1 1 0
scoreboard players set @s[scores={bow.crossbow.aiming=135..}] bow.crossbow.aiming 0