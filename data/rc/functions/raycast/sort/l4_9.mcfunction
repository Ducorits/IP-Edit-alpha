# sort by type
execute if block ~ ~ ~ minecraft:piston run function rc:raycast/block/piston/main
execute if block ~ ~ ~ minecraft:piston_head run function rc:raycast/block/piston_head/main
execute if block ~ ~ ~ minecraft:repeater run function rc:raycast/block/repeater/main