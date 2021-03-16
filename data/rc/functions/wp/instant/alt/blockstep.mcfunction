#scoreboard players add @s raycastCount 1
# check to see if ray is within a hitbox
execute if block ~ ~ ~ #rc:sort/l0 run function rc:raycast/sort/l0
# update ray based on vector direction
execute unless predicate rc:raystop run function rc:raycast/alt/vec_update
# set particle if predicate raystop is true
execute if predicate rc:raystop run particle minecraft:mycelium ~ ~ ~ 0 0 0 0 3 force

# run draw if in air block
execute unless predicate rc:raystop if block ^ ^ ^ air positioned ^ ^ ^.0625 run function rc:raycast/alt/draw
# rerun this function unless in air block
execute unless predicate rc:raystop if block ^ ^ ^ #rc:non_full_block positioned ^ ^ ^.0625 run function rc:raycast/alt/blockstep

# run draw if in air block
#execute unless predicate rc:raystop if block ^ ^ ^ air positioned ^ ^ ^.0625 run function rc:raycast/alt/draw