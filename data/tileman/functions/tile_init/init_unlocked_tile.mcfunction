


summon block_display ~ 63 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0f, 0f, -0.0f], scale: [0.998f, 1.001f, 0.998f]}, block_state: {Name: "minecraft:lime_stained_glass"}, Tags: [tileman]}

execute store result entity @e[type=block_display,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get @s PosX
execute store result entity @e[type=block_display,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get @s PosZ
