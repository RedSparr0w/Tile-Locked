# Update our available tiles
scoreboard players set Available TilemanData 0
execute as @a at @s run function tileman:tile_availability/calc_available_tiles
execute if score #difficulty TilemanData matches 1 run scoreboard players operation Available TilemanData /= #cost5 TilemanData

# Run checks on our players
execute as @a at @s run function tileman:pre_tick_player
