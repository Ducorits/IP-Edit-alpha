# sort by type
execute if block ~ ~ ~ #minecraft:buttons run function rc:raycast/block/buttons/main
execute if block ~ ~ ~ #minecraft:anvil run function rc:raycast/block/anvil/main
execute if block ~ ~ ~ #minecraft:trapdoors run function rc:raycast/block/trapdoors/main