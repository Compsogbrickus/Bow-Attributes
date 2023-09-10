# We need to get attributes from the origin of the arrow and apply them to the arrow
# This means we need a fake player intermediary
# So... set values to default and attempt to set from origin depending on if it is a mob or a player source
# We can only get to this step if the arrow has an owner.
data modify storage bow_attributes:player item set value {}
scoreboard players set $bow.do bow.range 0
scoreboard players set $bow.do bow.force 0
scoreboard players set $bow.do bow.damage 0
scoreboard players set $bow.do bow.pierce 0
scoreboard players set $bow.do bow.flame 0

execute on origin store result score $bow.do bow.player.type if entity @s[type=player]

execute if score $bow.do bow.player.type matches 0 on origin run data modify storage bow_attributes:player item set from entity @s HandItems[0]
execute if score $bow.do bow.player.type matches 0 unless data storage bow_attributes:player item{id:"minecraft:bow"} unless data storage bow_attributes:player item{id:"minecraft:crossbow"} on origin run data modify storage bow_attributes:player item set from entity @s HandItems[1]

execute if score $bow.do bow.player.type matches 1 on origin if entity @s[tag=!bow.offhand_aiming] run data modify storage bow_attributes:player item set from entity @s SelectedItem
execute if score $bow.do bow.player.type matches 1 on origin if entity @s[tag=bow.offhand_aiming] run data modify storage bow_attributes:player item set from entity @s Inventory[{Slot:-106b}]

function bow_attributes:stats/bow