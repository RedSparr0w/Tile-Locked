#Remove if tile not on block or is under a block
execute as @e[type=block_display,tag=tileman,distance=..10] at @s unless block ~ ~ ~ #tileman:opaque run kill @s
execute as @e[type=block_display,tag=tileman,distance=..10] at @s if block ~ ~1 ~ #tileman:opaque run kill @s
