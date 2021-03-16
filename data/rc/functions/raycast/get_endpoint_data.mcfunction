# Summon endpoint entity used to get the exact coordinates of the endpoint
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["endpoint_pos"]}

# Get xyz coordinates of endpoint
execute store result score endPosX rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_pos] Pos[0] 1000
execute store result score endPosY rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_pos] Pos[1] 1000
execute store result score endPosZ rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_pos] Pos[2] 1000

# Summon direction entity one block backwards of the endpoint, which location can be used to calculate a vector with which we can determine the rays direction
execute positioned ^ ^ ^-1 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["endpoint_direction"]}

# Get xyz position of direction entity
execute positioned ^ ^ ^-1 store result score directionX rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_direction] Pos[0] 1000
execute positioned ^ ^ ^-1 store result score directionY rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_direction] Pos[1] 1000
execute positioned ^ ^ ^-1 store result score directionZ rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_direction] Pos[2] 1000

# Calculate direction vector using the endpoint entity coordinates and direction entity coordinates
scoreboard players operation directionX rc_system -= endPosX rc_system
scoreboard players operation directionY rc_system -= endPosY rc_system
scoreboard players operation directionZ rc_system -= endPosZ rc_system

# Summon an entity to be used in determining what side of the hitbox the raycast hit
execute positioned ^ ^ ^-.0625 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["endpoint_block_side"]}

# Get xyz position of block side entity that can be used to calculate some stuff (like what side of the block the raycast hit)
execute positioned ^ ^ ^-.0625 store result score blockSideX rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_block_side] Pos[0] 1000
execute positioned ^ ^ ^-.0625 store result score blockSideY rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_block_side] Pos[1] 1000
execute positioned ^ ^ ^-.0625 store result score blockSideZ rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=endpoint_block_side] Pos[2] 1000