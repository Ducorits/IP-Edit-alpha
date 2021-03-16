# sort by type
execute if block ~ ~ ~ #minecraft:slabs run function rc:raycast/block/slab/main
execute if block ~ ~ ~ #minecraft:stairs run function rc:raycast/block/stair/main
execute if block ~ ~ ~ #minecraft:fences run function rc:raycast/block/fence/main
execute if block ~ ~ ~ #minecraft:signs run function rc:raycast/block/sign/main