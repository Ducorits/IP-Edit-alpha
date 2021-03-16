# select by blockstate what hitboxes to use
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function rc:raycast/block/stair/hitbox/-x-zcor
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function rc:raycast/block/stair/hitbox/-xzcor
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function rc:raycast/block/stair/hitbox/x-zcor
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function rc:raycast/block/stair/hitbox/xzcor
execute unless predicate rc:raystop unless block ~ ~ ~ #minecraft:stairs[shape=outer_right] unless block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function rc:raycast/block/stair/west/west_straight


