# sort by type
execute if block ~ ~ ~ #minecraft:slabs run function rc:hitbox/block/slab/main
execute if block ~ ~ ~ #minecraft:stairs run function rc:hitbox/block/stair/main
execute if block ~ ~ ~ #minecraft:fences run function rc:hitbox/block/fence/main
execute if block ~ ~ ~ #minecraft:signs run function rc:hitbox/block/sign/main