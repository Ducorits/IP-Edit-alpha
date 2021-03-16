# select by blockstate
function rc:raycast/block/stair/hitbox/hbtop
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[facing=north] run function rc:raycast/block/stair/north/north_main
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[facing=south] run function rc:raycast/block/stair/south/south_main
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[facing=east] run function rc:raycast/block/stair/east/east_main
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[facing=west] run function rc:raycast/block/stair/west/west_main
