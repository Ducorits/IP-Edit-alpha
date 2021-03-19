#update score used to limit the distance the ray can travel
scoreboard players remove @s rc_count 1

# detect if the ray hit a block
execute unless block ~ ~ ~ air run function rc:instant/blockhit

# detect if the ray hit an entity
execute if predicate rc:raystop run tag @e remove last_hit
execute if entity @e[dx=0,limit=1] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,limit=1] positioned ~.99 ~.99 ~.99 run function rc:instant/entityhit

#perform tasks to stop the raycast and get endpoint data
execute if predicate rc:raystop run function rc:instant/stop


# particles
#particle minecraft:dolphin ~ ~ ~ 0 0 0 0.01 1 force
#particle minecraft:underwater ~ ~0.1 ~ 0 0 0 0.01 1 force

#take steps based on how much space is available

# Big step (1.5 blocks)
execute if blocks ~1.5 252 ~1.5 ~-1.5 255 ~-1.5 ~-1.5 ~-1.5 ~-1.5 all positioned ~-1.5 ~-1.5 ~-1.5 unless entity @e[dx=2,dy=2,dz=2,limit=1] positioned ~1.5 ~1.5 ~1.5 unless predicate rc:raystop positioned ^ ^ ^1.5 run function rc:instant/loop

# Smaller step (1 block)
execute if blocks ~1 253 ~1 ~-1 255 ~-1 ~-1 ~-1 ~-1 all positioned ~-1 ~-1 ~-1 unless entity @e[dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 unless predicate rc:raystop positioned ^ ^ ^1 run function rc:instant/loop

# Even smaller step (half a block)
execute if blocks ~.5 254 ~.5 ~-.5 255 ~-.5 ~-.5 ~-.5 ~-.5 all positioned ~-.5 ~-.5 ~-.5 unless entity @e[dx=0,dy=0,dz=0,limit=1] positioned ~.5 ~.5 ~.5 unless predicate rc:raystop positioned ^ ^ ^.5 run function rc:instant/loop

# Smallest step (one 16th a block)
execute if block ^ ^ ^0 #rc:non_full_block unless predicate rc:raystop positioned ^ ^ ^0.0625 run function rc:instant/loop
