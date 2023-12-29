# Create scoreboards
scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add Uuid1 dummy
scoreboard objectives add Uuid2 dummy
scoreboard objectives add Uuid3 dummy
scoreboard objectives add Uuid4 dummy
scoreboard objectives add Temp dummy

# Scoreboards for tracking chunk unlocking
scoreboard objectives add tilemanTotalUnlockedTiles dummy
scoreboard objectives setdisplay list tilemanTotalUnlockedTiles
scoreboard objectives modify tilemanTotalUnlockedTiles displayname "Tiles"

scoreboard objectives add tilemanTotalAvailableTiles dummy
scoreboard objectives setdisplay list tilemanTotalAvailableTiles
scoreboard objectives modify tilemanTotalAvailableTiles displayname "Tiles"

scoreboard objectives add tilemanTickCounter dummy

# Difficulty Tracker. Add 0 to global value so that its set correctly on init, then set the default value to 2 cost.
scoreboard objectives add tilemanDifficulty dummy
scoreboard players add #global tilemanDifficulty 0
execute if score #global tilemanDifficulty matches ..0 run scoreboard players set #global tilemanDifficulty 2

# Scoreboard for trigger commands
scoreboard objectives add TileCost trigger

# Force players to spawn around a single block to prevent spawning outside an unlocked tile
gamerule spawnRadius 0
