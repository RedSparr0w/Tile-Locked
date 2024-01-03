execute as @a[gamemode=!spectator] at @s run function tilelocked:post_tick_player
kill @e[type=marker,tag=tilelocked,tag=player2d]
