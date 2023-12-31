# Tag the current player for use within this function
tag @s add currentPlayer

# Check if the TileLockedSettings trigger command was executed

# Adjust our difficulty
execute as @s[scores={TileLockedSettings=10}] run scoreboard players set #difficulty TileLockedData 0
execute as @s[scores={TileLockedSettings=11}] run scoreboard players set #difficulty TileLockedData 1
execute as @s[scores={TileLockedSettings=12}] run scoreboard players set #difficulty TileLockedData 2

# Tile unlock chime
execute as @s[scores={TileLockedSettings=20}] run scoreboard players set #unlockSound TileLockedData 0
execute as @s[scores={TileLockedSettings=21}] run scoreboard players set #unlockSound TileLockedData 1

# Show our settings menu
execute as @s[scores={TileLockedSettings=1..}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n======= 🔒 Tile Locked Settings 🔒 ======="}]
# difficulty
execute as @s[scores={TileLockedSettings=1..}] if score #difficulty TileLockedData matches 0 run tellraw @s ["",{"text":"Tile Cost:        "},{"text":"[ 1 xp ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 10"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 1 xp"}},{"text":" "},{"text":"[ 5 xp ]","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 11"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 5 xp"}},{"text":" "},{"text":"[ 1 level ]","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 12"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 1 level"}}]
execute as @s[scores={TileLockedSettings=1..}] if score #difficulty TileLockedData matches 1 run tellraw @s ["",{"text":"Tile Cost:        "},{"text":"[ 1 xp ]","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 10"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 1 xp"}},{"text":" "},{"text":"[ 5 xp ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 11"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 5 xp"}},{"text":" "},{"text":"[ 1 level ]","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 12"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 1 level"}}]
execute as @s[scores={TileLockedSettings=1..}] if score #difficulty TileLockedData matches 2 run tellraw @s ["",{"text":"Tile Cost:        "},{"text":"[ 1 xp ]","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 10"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 1 xp"}},{"text":" "},{"text":"[ 5 xp ]","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 11"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 5 xp"}},{"text":" "},{"text":"[ 1 level ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 12"},"hoverEvent":{"action":"show_text","contents":"Set the cost of each tile to 1 level"}}]
# chime
execute as @s[scores={TileLockedSettings=1..}] if score #unlockSound TileLockedData matches 0 run tellraw @s ["",{"text":"Tile Unlock Chime:                 "},{"text":"[ disabled ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 21"},"hoverEvent":{"action":"show_text","contents":"Play a sound when you unlock a tile"}}]
execute as @s[scores={TileLockedSettings=1..}] if score #unlockSound TileLockedData matches 1 run tellraw @s ["",{"text":"Tile Unlock Chime:                  "},{"text":"[ enabled ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TileLockedSettings set 20"},"hoverEvent":{"action":"show_text","contents":"Play a sound when you unlock a tile"}}]
# End menu
execute as @s[scores={TileLockedSettings=1..}] run tellraw @s ["",{"text":"==================================="}]


# Reset the trigger
execute as @s[scores={TileLockedSettings=1..}] at @s run scoreboard players reset @s TileLockedSettings

# Clean up
tag @s remove currentPlayer
