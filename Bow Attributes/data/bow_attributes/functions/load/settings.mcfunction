#IF YOU UPDATE ANYTHING IN HERE, RUN /function bow_attributes:load/settings
scoreboard players set $bow.global bow.visual 1

#Settings, initially set to vanilla values
scoreboard players set $bow.global.player bow.range -1
scoreboard players set $bow.global.player bow.force 100
scoreboard players set $bow.global.player bow.damage 20
scoreboard players set $bow.global.player bow.pierce 0

scoreboard players set $bow.global.player bow.trident.range -1
scoreboard players set $bow.global.player bow.trident.force 100

scoreboard players set $bow.global.player bow.throw.range -1
scoreboard players set $bow.global.player bow.throw.force 100

scoreboard players set $bow.global.mob bow.range -1
scoreboard players set $bow.global.mob bow.force 100
scoreboard players set $bow.global.mob bow.pierce 0

scoreboard players set $bow.global.mob bow.trident.range -1
scoreboard players set $bow.global.mob bow.trident.force 100

scoreboard players set $bow.global.mob bow.ball.range -1
scoreboard players set $bow.global.mob bow.ball.force 100

scoreboard players set $bow.global.mob bow.throw.range -1
scoreboard players set $bow.global.mob bow.throw.force 100

#1 = true, 0 = false
#bows crit by releasing right as they're fully charges, crossbows crit by overcharging
scoreboard players set $bow.global bow.custom_crits 1

#spectral arrows deal extra damage
scoreboard players set $bow.global bow.spectral_damage 0

#Create mob list if it doesnt exist
execute unless data storage bow_attributes:launch mobs run data merge storage bow_attributes:launch {mobs:[]}

#Start id count if it hasnt started
execute unless score $bow.global bow.launch_id matches 1.. run scoreboard players set $bow.global bow.launch_id 1