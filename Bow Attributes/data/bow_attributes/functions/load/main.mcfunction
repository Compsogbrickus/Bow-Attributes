## Scoreboards

# General and settings
scoreboard objectives add bow.setup dummy
scoreboard objectives add bow.visual dummy
scoreboard objectives add bow.custom_crits dummy
scoreboard objectives add bow.spectral_damage dummy
scoreboard objectives add bow.launch_id dummy
scoreboard objectives add bow.uuid.compare dummy "UUID Compare"

# Mob and player stats
scoreboard objectives add bow.player.type dummy

# Generic bow and crossbow stats
scoreboard objectives add bow.range dummy
scoreboard objectives add bow.force dummy
scoreboard objectives add bow.damage dummy
scoreboard objectives add bow.pierce dummy
scoreboard objectives add bow.flame dummy

# Bows
scoreboard objectives add bow.bow.aiming dummy "Bow Aiming"

# Crossbows
scoreboard objectives add bow.crossbow.aiming dummy "Crossbow Aiming"
scoreboard objectives add bow.crossbow.hand dummy
scoreboard objectives add bow.crossbow.quick_charge.lvl dummy
scoreboard objectives add bow.crossbow.crit dummy

# Tridents
scoreboard objectives add bow.trident.range dummy
scoreboard objectives add bow.trident.force dummy

# Ball
scoreboard objectives add bow.ball.range dummy
scoreboard objectives add bow.ball.force dummy

# Throw
scoreboard objectives add bow.throw.range dummy
scoreboard objectives add bow.throw.force dummy

# Arrows
scoreboard objectives add bow.arrow.range dummy "Range"
scoreboard objectives add bow.arrow.ticks dummy "Arrow Lifetime"
scoreboard objectives add bow.arrow.crit dummy
scoreboard objectives add bow.arrow.spectral dummy

# Constants
scoreboard objectives add -1 dummy
scoreboard objectives add 100 dummy

scoreboard players set $bow.const -1 -1
scoreboard players set $bow.const 100 100

## Setup
# Increase the setup score each version so setup will run again if you update
execute unless score $bow.global bow.setup matches 7 run function bow_attributes:load/settings
scoreboard players set $bow.global bow.setup 7