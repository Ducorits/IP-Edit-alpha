# summon corner entities
execute align xyz positioned ~ ~ ~ unless entity @e[limit=1,distance=...001,tag=cor] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0.02,Tags:["cor","box"]}

# summon ray entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","box"]}

# get pos of corner entity 1
execute align xyz store result score @s Xpos run data get entity @e[type=area_effect_cloud,limit=1,tag=cor,distance=...0001] Pos[0] 1000
execute align xyz store result score @s Ypos run data get entity @e[type=area_effect_cloud,limit=1,tag=cor,distance=...0001] Pos[1] 1000
execute align xyz store result score @s Zpos run data get entity @e[type=area_effect_cloud,limit=1,tag=cor,distance=...0001] Pos[2] 1000

# get pos of ray entity
execute store result score @s rayX run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1000
execute store result score @s rayY run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1000
execute store result score @s rayZ run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1000

#calculate relative position in block
scoreboard players operation @s rayX -= @s Xpos
scoreboard players operation @s rayY -= @s Ypos
scoreboard players operation @s rayZ -= @s Zpos

# select hitboxes by blockstate
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[up=true] run function rc:raycast/block/wall/hitbox/middle
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[east=low] run function rc:raycast/block/wall/hitbox/east_low
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[west=low] run function rc:raycast/block/wall/hitbox/west_low
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[north=low] run function rc:raycast/block/wall/hitbox/north_low
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[south=low] run function rc:raycast/block/wall/hitbox/south_low
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[east=tall] run function rc:raycast/block/wall/hitbox/east_tall
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[west=tall] run function rc:raycast/block/wall/hitbox/west_tall
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[north=tall] run function rc:raycast/block/wall/hitbox/north_tall
execute unless predicate rc:raystop if block ~ ~ ~ #minecraft:walls[south=tall] run function rc:raycast/block/wall/hitbox/south_tall

