execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosZ run data get entity @s Pos[2]

# Set our position to the player tile position?
execute store result entity @s Pos[0] double 1 run scoreboard players get @s PosX
execute store result entity @s Pos[2] double 1 run scoreboard players get @s PosZ

# Tiles that are unlocked should be marked as unlocked
tag @s[tag=!locked,tag=!unlocked] add unlocked

# Locked chunks require additional initialization
execute as @s[tag=unlocked] run function tileman:tile_init/init_unlocked_tile

# summon block_display ~ 63 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.499f, 0f, -0.499f], scale: [0.998f, 1.001f, 0.998f]}, block_state: {Name: "minecraft:glass"}, Tags: [tileman]}
