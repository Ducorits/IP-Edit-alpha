# sort by type
execute if block ~ ~ ~ #minecraft:leaves run function rc:raycast/block/leaves/main
execute if block ~ ~ ~ #minecraft:flower_pots run function rc:raycast/block/flower_pots/main
execute if block ~ ~ ~ #minecraft:carpets run function rc:raycast/block/carpet/main