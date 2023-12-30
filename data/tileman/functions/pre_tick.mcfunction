# Update our available tiles
execute as @a at @s run function tileman:tile_availability/calc_available_tiles

# Run checks on our players
execute as @a at @s run function tileman:pre_tick_player
