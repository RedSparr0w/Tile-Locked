# Check tiles around the player if they need updating
execute if score #ticks TileLockedData matches 10.. run function tilelocked:tile_init/check_remove_tile
execute if score #ticks TileLockedData matches 10.. run function tilelocked:tile_init/check_add_tile
execute if score #ticks TileLockedData matches 10.. run scoreboard players set #ticks TileLockedData 0

# Save players last good position for teleporting back to tiles
execute positioned ~ 64 ~ if entity @e[type=marker,tag=unlocked,distance=..0.71] at @s as @e[tag=tilelocked,tag=prevPosMarker,sort=nearest,limit=1] run kill @s
execute positioned ~ 64 ~ if entity @e[type=marker,tag=unlocked,distance=..0.71] at @s run summon minecraft:marker ^ ^ ^ {Tags: [tilelocked, prevPosMarker]}

# Update tile colors if needed
execute if score #tileColor TileLockedData matches 0 as @e[type=block_display,tag=tilelocked,tag=!color0] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 1 as @e[type=block_display,tag=tilelocked,tag=!color1] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 2 as @e[type=block_display,tag=tilelocked,tag=!color2] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 3 as @e[type=block_display,tag=tilelocked,tag=!color3] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 4 as @e[type=block_display,tag=tilelocked,tag=!color4] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 5 as @e[type=block_display,tag=tilelocked,tag=!color5] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 6 as @e[type=block_display,tag=tilelocked,tag=!color6] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 7 as @e[type=block_display,tag=tilelocked,tag=!color7] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 8 as @e[type=block_display,tag=tilelocked,tag=!color8] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 9 as @e[type=block_display,tag=tilelocked,tag=!color9] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 10 as @e[type=block_display,tag=tilelocked,tag=!color10] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 11 as @e[type=block_display,tag=tilelocked,tag=!color11] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 12 as @e[type=block_display,tag=tilelocked,tag=!color12] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 13 as @e[type=block_display,tag=tilelocked,tag=!color13] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 14 as @e[type=block_display,tag=tilelocked,tag=!color14] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 15 as @e[type=block_display,tag=tilelocked,tag=!color15] run function tilelocked:tile_init/check_color
execute if score #tileColor TileLockedData matches 16 as @e[type=block_display,tag=tilelocked,tag=!color16] run function tilelocked:tile_init/check_color
