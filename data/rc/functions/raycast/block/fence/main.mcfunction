# select by blockstate
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/middle
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:fences[east=true] run function rc:raycast/block/fence/hitbox/east_main
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:fences[west=true] run function rc:raycast/block/fence/hitbox/west_main
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:fences[north=true] run function rc:raycast/block/fence/hitbox/north_main
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:fences[south=true] run function rc:raycast/block/fence/hitbox/south_main
