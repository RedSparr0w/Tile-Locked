# Tag the current player for use within this function
tag @s add currentPlayer


# Collide with tile boundaries
# TODO: Teleport player back to a tile they have unlocked
# getting immediately teleported back to their last "good" location.


# Check if the TileCost trigger command was executed
execute as @s[scores={TileCost=1..}] at @s run scoreboard players reset @s TileCost


# Clean up
tag @s remove currentPlayer
