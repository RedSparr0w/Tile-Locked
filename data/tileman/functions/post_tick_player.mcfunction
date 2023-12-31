
execute if score #ticks TilemanData matches 10.. run function tileman:tile_init/check_remove_tile
execute if score #ticks TilemanData matches 10.. run function tileman:tile_init/check_add_tile
execute if score #ticks TilemanData matches 10.. run scoreboard players set #ticks TilemanData 0
