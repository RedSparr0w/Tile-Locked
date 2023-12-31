![TileLockedLogo](https://github.com/RedSparr0w/Tile-Locked/assets/7288322/642a28e1-ae91-4512-9ebd-39236a73e135)

# About
Tile Locked is a Minecraft datapack that draws inspiration from [ChunkLock](https://modrinth.com/datapack/chunklock) and the Old School RuneScape [Tileman Mode](https://runelite.net/plugin-hub/show/tilemanmode), offering players a unique and challenging gameplay experience.

The core mechanic of Tile Locked revolves around the incremental unlocking of the Minecraft world with a cost of xp or levels per tile unlock. Unlike traditional gameplay where the entire world is accessible from the start, this datapack limits players to unlocking one tile at a time.

This adds an extra layer of strategy and preparation, as players must carefully choose which tiles to unlock first, considering the resources and challenges needed to progress.

![2023-12-31_20 30 24](https://github.com/RedSparr0w/Tile-Locked/assets/7288322/503bfdb2-5cbf-4458-b898-2a84ee73caf1)
![2023-12-31_20 19 02](https://github.com/RedSparr0w/Tile-Locked/assets/7288322/e019563b-d736-44a6-ac13-2a08d2577fda)
![2023-12-31_19 43 27](https://github.com/RedSparr0w/Tile-Locked/assets/7288322/a055fc60-41e8-4eef-94d9-b6e99fda2e29)
![2023-12-31_20 05 49](https://github.com/RedSparr0w/Tile-Locked/assets/7288322/7177d3aa-7397-4cb0-99ba-3de0fe150370)


# Commands
View and change settings:
`/trigger TileLockedSettings`
![image](https://github.com/RedSparr0w/Tile-Locked/assets/7288322/38f23f4a-5a34-4b5b-8d75-5ac3998ee4ee)


# Installation
Simply add the datapack to your world saves datapacks folder.

### TODO:

- [X] Add a way to gain tiles
    - [X] Per x experience gained
        - [X] Charge the XP to unlock the tiles
    - [X] Per x levels gained
        - [X] Charge the level to unlock the tiles (levels cost more xp at higher levels)
- [X] Handle Nether/End travel if no available tiles
    - Automatically unlock 1 tile if no nearby tiles
        - Can still cause you to be stuck in nether portal
- [ ] Only use a tile if you are touching the ground?
    - Or using a boat?
- [X] What happens when you die and respawn in a bed with no available tiles and no unlocked tiles by the bed
    - Move player to closest tile if more than 1 block distance from last tile?
- [X] Tile overlays
    - [X] Show on top of all blocks that have non full blocks above them?
        - [X] remove when block is broken
        - [X] add when new block placed
- [ ] Customisations
    - [ ] Choose a tile color (maybe)
    - [X]] Choose if tile unlock sound enabled
    - [X] Choose a difficulty
        - [X] Easy
            - 1 xp per tile
        - [X] Medium
            - 5 xp per tile
        - [X] Hard
            - 1 level per tile
