execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosZ run data get entity @s Pos[2]

# Set our position to the player tile position?
execute store result entity @s Pos[0] double 1 run scoreboard players get @s PosX
execute store result entity @s Pos[2] double 1 run scoreboard players get @s PosZ

execute at @s run teleport ~0.5 ~ ~0.5

# Tiles that are unlocked should be marked as unlocked
tag @s[tag=!locked,tag=!unlocked] add unlocked

# Unlocked tiles require additional initialization
execute as @s[tag=unlocked] at @s run function tileman:tile_init/init_unlocked_tile
