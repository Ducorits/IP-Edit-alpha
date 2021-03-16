# sort by type
execute if block ~ ~ ~ #minecraft:saplings run function rc:raycast/block/saplings/main
execute if block ~ ~ ~ #minecraft:walls run function rc:raycast/block/wall/main
execute if block ~ ~ ~ #minecraft:doors run function rc:raycast/block/doors/main