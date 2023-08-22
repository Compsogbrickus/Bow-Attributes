execute if score $bow.global bow.custom_crits matches 1 run execute as @a run function bow_attributes:crit/start
execute as @e[tag=!exclude] at @s run function bow_attributes:tick/branch
execute if score $bow.global bow.custom_crits matches 1 run execute as @a run function bow_attributes:crit/end

scoreboard players operation $bow.global bow.visual *= $bow.const -1