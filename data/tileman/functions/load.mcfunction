# Create scoreboards
scoreboard objectives add TilemanXp dummy
scoreboard objectives add TilemanLevel dummy

# Scoreboards for tracking tile unlocking
scoreboard objectives add TilemanData dummy
scoreboard objectives setdisplay list TilemanData
scoreboard objectives modify TilemanData displayname "=== Tileman Info ==="
execute unless score #difficulty TilemanData matches 0.. run scoreboard players set #difficulty TilemanData 0
execute unless score Unlocked TilemanData matches 0.. run scoreboard players set Unlocked TilemanData 0
execute unless score #cost5 TilemanData matches 5 run scoreboard players set #cost5 TilemanData 5
execute unless score #ticks TilemanData matches 0.. run scoreboard players set #ticks TilemanData 0
scoreboard objectives setdisplay sidebar TilemanData

# Scoreboard for trigger commands
scoreboard objectives add TileCost trigger

# Force players to spawn around a single block to prevent spawning outside an unlocked tile
gamerule spawnRadius 0
gamerule keepInventory true
