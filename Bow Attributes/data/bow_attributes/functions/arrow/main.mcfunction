# Has the arrow been initialized? If not, do that.
#    Does the arrow have an owner? If not, ignore it.
execute if entity @s[tag=!bow.arrow.init] run function bow_attributes:arrow/owner_check

# Tick arrow to find out if it has reached max range.
scoreboard players add @s bow.arrow.ticks 1
execute unless score @s bow.arrow.range matches -1 if score @s bow.arrow.ticks >= @s bow.arrow.range run data merge entity @s {Motion:[0.0,0.0,0.0]}