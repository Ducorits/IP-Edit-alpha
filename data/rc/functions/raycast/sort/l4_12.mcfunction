# sort by type
execute if block ~ ~ ~ minecraft:farmland run function rc:raycast/block/farmland/main
execute if block ~ ~ ~ minecraft:chorus_flower run function rc:raycast/block/chorus_flower/main
execute if block ~ ~ ~ minecraft:chorus_plant run function rc:raycast/block/chorus_plant/main
execute if block ~ ~ ~ minecraft:chain run function rc:raycast/block/chain/main