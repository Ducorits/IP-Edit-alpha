# store block position
execute store result score Xblock rc_hitbox run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1
execute store result score Yblock rc_hitbox run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1
execute store result score Zblock rc_hitbox run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1
# select by blockstate
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:slabs[type=top] run function rc:hitbox/block/slab/slabtop
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:slabs[type=bottom] run function rc:hitbox/block/slab/slabbottom
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:slabs[type=double] run function rc:hitbox/block/basicblock