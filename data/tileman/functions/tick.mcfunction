# Initialize new players
execute as @a[tag=!playerInit] run function tileman:init_player

# Tick players
execute as @a[gamemode=!spectator] at @s run function tileman:tick_player
