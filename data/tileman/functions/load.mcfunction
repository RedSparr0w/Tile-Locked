# Create scoreboards
scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add Uuid1 dummy
scoreboard objectives add Uuid2 dummy
scoreboard objectives add Uuid3 dummy
scoreboard objectives add Uuid4 dummy

# Scoreboards for tracking tile unlocking
scoreboard objectives add TilemanData dummy
scoreboard objectives setdisplay list TilemanData
scoreboard objectives modify TilemanData displayname "=== Tileman Info ==="
execute unless score Unlocked TilemanData matches 0.. run scoreboard players set Unlocked TilemanData 0
execute unless score Available TilemanData matches 0.. run scoreboard players set Available TilemanData 1
scoreboard objectives setdisplay sidebar TilemanData

# Difficulty Tracker. Add 0 to global value so that its set correctly on init, then set the default value to 2 cost.
scoreboard objectives add tilemanDifficulty dummy
scoreboard players add #global tilemanDifficulty 0
execute if score #global tilemanDifficulty matches ..0 run scoreboard players set #global tilemanDifficulty 2

# Scoreboard for trigger commands
scoreboard objectives add TileCost trigger

# Force players to spawn around a single block to prevent spawning outside an unlocked tile
gamerule spawnRadius 0
