#tag @s add stop
# select by type
#execute if block ~ ~ ~ #minecraft:slabs run function rc:raycast/block/slab/main
#execute if block ~ ~ ~ #minecraft:stairs run function rc:raycast/block/stair/main
execute if block ~ ~ ~ minecraft:redstone_torch run function rc:raycast/block/slant
execute if block ~ ~ ~ #rc:sort/l0 run function rc:raycast/sort/l0
execute unless block ~ ~ ~ #rc:non_full_block run function rc:raycast/block/basicblock