# sort by type
execute if block ~ ~ ~ minecraft:hopper run function rc:raycast/block/hopper/main
execute if block ~ ~ ~ minecraft:end_rod run function rc:raycast/block/end_rod/main
execute if block ~ ~ ~ minecraft:composter run function rc:raycast/block/composter/main