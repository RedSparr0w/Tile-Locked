
scoreboard players add #ticks TileLockedData 1

# Run checks on our players
execute as @a[gamemode=!spectator] at @s run function tilelocked:pre_tick_player
