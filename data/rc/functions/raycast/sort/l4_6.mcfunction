# sort by type
execute if block ~ ~ ~ minecraft:end_portal_frame run function rc:raycast/block/end_portal_frame/main
execute if block ~ ~ ~ minecraft:enchanting_table run function rc:raycast/block/enchanting_table/main
execute if block ~ ~ ~ minecraft:chest run function rc:raycast/block/chest/main
execute if block ~ ~ ~ minecraft:trapped_chest run function rc:raycast/block/chest/main