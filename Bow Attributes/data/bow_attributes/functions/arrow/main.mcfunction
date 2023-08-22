execute if entity @s[tag=!init] run function bow_attributes:arrow/check

scoreboard players add @s bow.arrow.ticks 1

execute if entity @s unless score @s bow.arrow.range matches -1 if score @s bow.arrow.ticks >= @s bow.arrow.range run data merge entity @s {Motion:[0.0,0.0,0.0]}

#this bugfix is barely noticable and costs performance
#execute if entity @s[nbt={OnGround:1b}] run tag @s add range