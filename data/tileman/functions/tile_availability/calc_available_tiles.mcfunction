execute if score #difficulty TilemanData matches 0..1 store result score @s TilemanData run data get entity @s XpTotal
execute if score #difficulty TilemanData matches 1 run scoreboard players operation @s TilemanData /= #cost5 TilemanData
execute if score #difficulty TilemanData matches 2 store result score @s TilemanData run data get entity @s XpLevel
