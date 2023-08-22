# scoreboard players set $bow.do bow.arrow.crit 0
# execute store result score $bow.do bow.arrow.spectral if entity @s[type=minecraft:spectral_arrow]

execute on origin store result score $bow.do bow.player.type if entity @s[type=player]
# if player get mainhand, offhand, armor
# if mob get mainhand, offhand

execute if score #mob bowGlobal matches 1 run function bow:get_player
execute if score #mob bowGlobal matches 0 run function bow:get_mob

execute if score #mob bowGlobal matches 1 on origin run function bow:arrow_stats
execute if score #mob bowGlobal matches 0 run function bow:mob_default

function bow:arrow_force

execute if score #arrowLaunch bowGlobal matches 1.. run function bow:launch
execute unless score #arrowLaunch bowGlobal matches 1.. run function bow:finish