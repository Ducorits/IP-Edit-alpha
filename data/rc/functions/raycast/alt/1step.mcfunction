#limit the distance the ray can travel
scoreboard players add @s raycastCount 1
# detect block hit
execute unless block ~ ~ ~ air run function rc:raycast/alt/blockhit
# detect entity hit
#execute if entity @e[dx=0,limit=1] run function rc:raycast/alt/entityhit
# make end particle
execute if predicate rc:raystop run particle minecraft:mycelium ~ ~ ~ 0 0 0 0 3 force

# cleanup
#kill @e[tag=box]
# particles
#particle minecraft:dolphin ~ ~ ~ 0 0 0 0.01 1 force
#particle minecraft:underwater ~ ~0.1 ~ 0 0 0 0.01 1 force


#execute unless predicate rc:raystop positioned ^ ^ ^0.05 run function rc:raycast/alt/draw
execute if blocks ~1.5 252 ~1.5 ~-1.5 255 ~-1.5 ~-1.5 ~-1.5 ~-1.5 all positioned ~-1.5 ~-1.5 ~-1.5 unless entity @e[dx=2,dy=2,dz=2,limit=1] positioned ~1.5 ~1.5 ~1.5 unless predicate rc:raystop positioned ^ ^ ^1.5 run function rc:raycast/alt/draw

execute if blocks ~1 253 ~1 ~-1 255 ~-1 ~-1 ~-1 ~-1 all positioned ~-1 ~-1 ~-1 unless entity @e[dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 unless predicate rc:raystop positioned ^ ^ ^1 run function rc:raycast/alt/draw

execute if blocks ~.5 254 ~.5 ~-.5 255 ~-.5 ~-.5 ~-.5 ~-.5 all positioned ~-.5 ~-.5 ~-.5 unless entity @e[dx=0,dy=0,dz=0,limit=1] positioned ~.5 ~.5 ~.5 unless predicate rc:raystop positioned ^ ^ ^.5 run function rc:raycast/alt/draw

execute if block ^ ^ ^0 #rc:non_full_block unless predicate rc:raystop positioned ^ ^ ^0.0625 run function rc:raycast/alt/draw

# unless blocks ~1.5 252 ~1.5 ~-1.5 255 ~-1.5 ~-1.5 ~-1.5 ~-1.5 all / unless blocks ~1.5 252 ~1.5 ~-1.5 255 ~-1.5 ~-1.5 ~-1.5 ~-1.5 all unless blocks ~1 253 ~1 ~-1 255 ~-1 ~-1 ~-1 ~-1 all 