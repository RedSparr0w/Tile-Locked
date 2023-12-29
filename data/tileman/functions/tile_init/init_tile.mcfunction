# We summon a tile marker at the current location and then `init_tile_marker`
# Players spawn tiles are unlocked by default.
execute as @s[tag=currentPlayer] run summon minecraft:marker ~ ~ ~ {Tags: [tileman, tileMarker, unlocked]}
execute as @s[tag=currentPlayer] run particle minecraft:electric_spark ~ ~ ~
execute as @e[type=marker,tag=tileMarker,distance=..1,sort=nearest,limit=1] at @s run function tileman:tile_init/init_tile_marker
