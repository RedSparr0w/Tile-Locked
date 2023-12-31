# generate markers at a specific y-position so other markers can all remain relative
summon minecraft:marker ~ 64 ~ {Tags: [tilelocked, player2d, currentPlayer]}

# Tag the current player for use within this function
tag @s add currentPlayer

# Update our available tiles
function tilelocked:tile_init/calc_available_tiles

# Mark tile as unlocked if player has no tiles unlocked close by (no loaded chunks or different dimension)
execute as @e[type=marker,tag=player2d,tag=currentPlayer] at @s unless entity @e[type=marker,tag=unlocked,distance=-0..] if loaded ~ ~ ~ run function tilelocked:tile_init/init_tile

# If no tile marker is nearby, we need to unlock one or teleport the player back to the nearest unlocked tile
# (within 0.71 distance, corner of block is about 0.707 away from the center)
execute if score @s TileLockedData matches ..0 at @e[type=marker,tag=player2d,tag=currentPlayer] unless entity @e[type=marker,tag=unlocked,distance=..0.71] at @s positioned ~ ~-1 ~ as @e[type=minecraft:block_display,tag=tilelocked,distance=0..,sort=nearest,limit=1] at @e[type=minecraft:block_display,tag=tilelocked,distance=0..,sort=nearest,limit=1] run teleport @p[tag=currentPlayer] ~ ~1 ~
execute if score @s TileLockedData matches 1.. as @e[type=marker,tag=player2d,tag=currentPlayer] at @s unless entity @e[type=marker,tag=unlocked,distance=..0.71] if loaded ~ ~ ~ run function tilelocked:tile_init/init_tile

# Remove temporary tag so that it can be used by the next player
tag @e[type=marker,tag=player2d,tag=currentPlayer] remove currentPlayer
tag @s remove currentPlayer
