# Refresh our position marker, unless we are in a unlocked chunk.
# Our position marker should always be located at our last "good" position.
execute unless entity @e[type=marker,tag=currentTile,tag=unlocked] run function tileman:collision/refresh_position_marker
