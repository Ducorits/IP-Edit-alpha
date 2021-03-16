# sort by type
execute if block ~ ~ ~ minecraft:soul_torch run function rc:raycast/block/soul_torch/main
execute if block ~ ~ ~ minecraft:water run function rc:raycast/block/water/main
execute if block ~ ~ ~ minecraft:scaffolding run function rc:raycast/block/scaffolding/main