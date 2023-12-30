execute store result score @s TilemanXp run data get entity @s XpTotal
execute store result score @s TilemanLevel run data get entity @s XpLevel

# TODO: use xp or level to calculate Available tiles based off settings
execute if score #difficulty TilemanData matches 0..1 run scoreboard players operation Available TilemanData += @s TilemanXp
execute if score #difficulty TilemanData matches 2 run scoreboard players operation Available TilemanData += @s TilemanLevel
