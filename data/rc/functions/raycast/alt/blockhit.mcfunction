#tag @s add stop
execute unless block ~ ~ ~ #rc:non_full_block run tag @s add stop
# set particle if predicate raystop is true
execute if predicate rc:raystop run particle minecraft:mycelium ~ ~ ~ 0 0 0 0 3 force
# select by type
execute if block ^ ^ ^ #rc:non_full_block run function rc:raycast/alt/start_ray
#function rc:raycast/alt/start_ray
execute if block ~ ~ ~ #rc:non_full_block run function rc:raycast/alt/blockstep



#execute if block ~ ~ ~ #minecraft:slabs run function rc:raycast/block/slab/main
#execute if block ~ ~ ~ #minecraft:stairs run function rc:raycast/block/stair/main
#execute if block ~ ~ ~ minecraft:redstone_torch run function rc:raycast/block/slant
#execute if block ~ ~ ~ #rc:sort/l0 run function rc:raycast/sort/l0
