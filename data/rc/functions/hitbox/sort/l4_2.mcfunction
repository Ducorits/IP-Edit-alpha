# sort by type
execute if block ~ ~ ~ #minecraft:saplings run function rc:hitbox/block/saplings/main
execute if block ~ ~ ~ #minecraft:walls run function rc:hitbox/block/wall/main
execute if block ~ ~ ~ #minecraft:doors run function rc:hitbox/block/doors/main