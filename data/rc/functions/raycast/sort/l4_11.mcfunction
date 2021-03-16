# sort by type
execute if block ~ ~ ~ minecraft:brewing_stand run function rc:raycast/block/brewing_stand/main
execute if block ~ ~ ~ minecraft:lantern run function rc:raycast/block/lantern/main
execute if block ~ ~ ~ minecraft:dragon_head run function rc:raycast/block/dragon_head/main
execute if block ~ ~ ~ minecraft:conduit run function rc:raycast/block/conduit/main