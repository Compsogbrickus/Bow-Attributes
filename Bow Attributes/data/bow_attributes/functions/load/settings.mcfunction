#IF YOU UPDATE ANYTHING IN HERE, RUN /function bow_attributes:load/settings
# scoreboard players set $bow.global bow.visual 1

#Settings, initially set to vanilla values
# scoreboard players set $bow.global.player bow.range -1
# scoreboard players set $bow.global.player bow.force 100
# scoreboard players set $bow.global.player bow.damage 20
# scoreboard players set $bow.global.player bow.pierce 0

# scoreboard players set $bow.global.mob bow.range -1
# scoreboard players set $bow.global.mob bow.force 100
# scoreboard players set $bow.global.mob bow.damage 20
# scoreboard players set $bow.global.mob bow.pierce 0

#1 = true, 0 = false
#bows crit by releasing right as they're fully charged, crossbows crit by overcharging
scoreboard players set $bow.global bow.custom_crits 1