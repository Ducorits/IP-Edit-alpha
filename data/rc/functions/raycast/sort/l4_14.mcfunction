# sort by type
execute if block ~ ~ ~ minecraft:snow run function rc:raycast/block/snow/main
execute if block ~ ~ ~ minecraft:ladder run function rc:raycast/block/ladder/main
execute if block ~ ~ ~ minecraft:torch run function rc:raycast/block/torch/main