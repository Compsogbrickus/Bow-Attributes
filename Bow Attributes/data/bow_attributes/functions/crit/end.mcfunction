data modify storage bow_attributes:player mainhand set value {}
data modify storage bow_attributes:player mainhand set from entity @s SelectedItem
data modify storage bow_attributes:player offhand set value {}
data modify storage bow_attributes:player offhand set from entity @s Inventory[{Slot:-106b}]

execute unless entity @s[tag=bow.crossbow.aiming] if data storage bow_attributes:player mainhand{tag:{crit:1b}} unless data storage bow_attributes:player mainhand{tag:{ChargedProjectiles:[{}]}} run item modify entity @s weapon.mainhand bow_attributes:remove_crit
execute unless entity @s[tag=bow.crossbow.aiming] if data storage bow_attributes:player offhand{tag:{crit:1b}} unless data storage bow_attributes:player offhand{tag:{ChargedProjectiles:[{}]}} run item modify entity @s weapon.offhand bow_attributes:remove_crit

tag @s remove bow.bow.aiming
tag @s remove bow.crossbow.aiming