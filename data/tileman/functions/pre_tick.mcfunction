
scoreboard players add #ticks TilemanData 1

# Run checks on our players
execute as @a[gamemode=!spectator] at @s run function tileman:pre_tick_player
