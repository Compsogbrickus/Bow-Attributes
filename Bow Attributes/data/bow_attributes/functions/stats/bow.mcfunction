execute store result score $bow.temp bow.range run data get storage bow_attributes:player item.tag.range
scoreboard players operation $bow.do bow.range += $bow.temp bow.range

execute store result score $bow.temp bow.force run data get storage bow_attributes:player item.tag.force
scoreboard players operation $bow.do bow.force += $bow.temp bow.force

execute store result score $bow.temp bow.damage run data get storage bow_attributes:player item.tag.damage
scoreboard players operation $bow.do bow.damage += $bow.temp bow.damage

execute store result score $bow.temp bow.pierce run data get storage bow_attributes:player item.tag.pierce
scoreboard players operation $bow.do bow.pierce += $bow.temp bow.pierce

execute store result score $bow.temp bow.flame run data get storage bow_attributes:player item.tag.flame
scoreboard players operation $bow.do bow.flame += $bow.temp bow.flame