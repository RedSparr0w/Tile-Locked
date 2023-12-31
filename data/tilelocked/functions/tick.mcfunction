# Initialize new players
execute as @a[tag=!playerInit] run function tilelocked:init_player

# Tick players
execute as @a[gamemode=!spectator] at @s run function tilelocked:tick_player
