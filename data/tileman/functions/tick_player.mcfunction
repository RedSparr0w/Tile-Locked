# Tag the current player for use within this function
tag @s add currentPlayer


# Check if the TileCost trigger command was executed
execute as @s[scores={TileCost=1..}] at @s run scoreboard players reset @s TileCost


# Clean up
tag @s remove currentPlayer
