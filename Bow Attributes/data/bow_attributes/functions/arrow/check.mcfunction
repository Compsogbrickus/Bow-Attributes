data modify storage bow_attributes:arrow uuid set value {}
data modify storage bow_attributes:arrow uuid set from entity @s Owner

execute if data storage bow_attributes:arrow uuid[] run function bow_attributes:arrow/init