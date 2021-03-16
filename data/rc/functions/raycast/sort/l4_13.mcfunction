# sort by type
execute if block ~ ~ ~ minecraft:campfire run function rc:raycast/block/campfire/main
execute if block ~ ~ ~ minecraft:iron_bars run function rc:raycast/block/iron_bars/main
execute if block ~ ~ ~ minecraft:cobweb run function rc:raycast/block/cobweb/main