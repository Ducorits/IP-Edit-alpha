# select by blockstate what hitbox to use
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[half=top] run function rc:raycast/block/stair/top
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[half=bottom] run function rc:raycast/block/stair/bottom
