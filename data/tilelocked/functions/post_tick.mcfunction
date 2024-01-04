execute as @a[gamemode=!spectator] at @s run function tilelocked:post_tick_player

# Check tiles around the player if they need updating
execute if score #ticks TileLockedData matches 10.. as @a[gamemode=!spectator] at @s run function tilelocked:tile_init/check_remove_tile
execute if score #ticks TileLockedData matches 10.. as @a[gamemode=!spectator] at @s run function tilelocked:tile_init/check_add_tile
execute if score #ticks TileLockedData matches 10.. run scoreboard players set #ticks TileLockedData 0

kill @e[type=marker,tag=tilelocked,tag=player2d]
