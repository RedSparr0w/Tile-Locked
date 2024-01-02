# Check tiles around the player if they need updating
execute if score #ticks TileLockedData matches 10.. run function tilelocked:tile_init/check_remove_tile
execute if score #ticks TileLockedData matches 10.. run function tilelocked:tile_init/check_add_tile
execute if score #ticks TileLockedData matches 10.. run scoreboard players set #ticks TileLockedData 0

# Save players last good position for teleporting back to tiles
execute positioned ~ 64 ~ if entity @e[type=marker,tag=unlocked,distance=..0.71] at @s as @e[tag=tilelocked,tag=prevPosMarker,sort=nearest,limit=1] run kill @s
execute positioned ~ 64 ~ if entity @e[type=marker,tag=unlocked,distance=..0.71] at @s run summon minecraft:marker ^ ^ ^ {Tags: [tilelocked, prevPosMarker]}
