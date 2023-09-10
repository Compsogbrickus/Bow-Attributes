# execute as @s[type=firework_rocket] run function bow:fireworks
# execute as @s[type=trident] run function bow:tridents
# execute as @s[type=#bow:ball] run function bow:ball
# execute as @s[type=#bow:throw,tag=!range] run function bow:throws
execute as @s[type=#minecraft:arrows] run function bow_attributes:arrow/main
# execute as @s[type=item] run function bow:items
# execute as @s[tag=launched,tag=!range] run function bow:launched
# execute as @s[tag=visual] run function bow:visual

# execute if score @s bow.arrow.ticks >= @s bow.arrow.range run tag @s add bow.range
# execute unless score @s bow.arrow.range matches 1.. run tag @s add bow.range

# tag @s[tag=bow.range,tag=!bow.visual] add bow.exclude

# tag @s add bow.init