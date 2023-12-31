
execute if score #ticks TileLockedData matches 10.. run function tilelocked:tile_init/check_remove_tile
execute if score #ticks TileLockedData matches 10.. run function tilelocked:tile_init/check_add_tile
execute if score #ticks TileLockedData matches 10.. run scoreboard players set #ticks TileLockedData 0
