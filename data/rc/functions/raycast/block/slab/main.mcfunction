# select by blockstate
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:slabs[type=top] run function rc:raycast/block/slab/slabtop
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:slabs[type=bottom] run function rc:raycast/block/slab/slabbottom
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:slabs[type=double] run function rc:raycast/block/basicblock