#tag @s add stop



# summon ray entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","box"]}
execute unless block ~ ~ ~ #rc:non_full_block run function rc:hitbox/block/basicblock

# get pos of block using ray entity
# perform all functions on X axis data

# store ray x position on #temp score with 1 scaling to get block x position ray is in
execute store result score #temp rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1
# unless the block x position score is the same as #temp get block hitbox data
execute unless score Xblock rc_hitbox = #temp rc_system if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
# multiply #temp by 1000 to get it in the same precision range as ray-X
scoreboard players operation #temp rc_system *= %1000 rc_const
# store ray x position to ray-X score with a scale of 1000 for more precision
execute store result score rayX rc_hitbox run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1000
# remove #temp socre from ray-X score to get relative x position inside of the block
scoreboard players operation rayX rc_hitbox -= #temp rc_system


#  perform all functions on Y axis data

# store ray y position on #temp score with 1 scaling to get block y position ray is in
execute store result score #temp rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1
# unless the block y position score is the same as #temp get block hitbox data
execute unless score Yblock rc_hitbox = #temp rc_system if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
# multiply #temp by 1000 to get it in the same precision range as ray-Y
scoreboard players operation #temp rc_system *= %1000 rc_const
# store ray y position to ray-Y score with a scale of 1000 for more precision
execute store result score rayY rc_hitbox run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1000
# remove #temp socre from ray-Y score to get relative y position inside of the block
scoreboard players operation rayY rc_hitbox -= #temp rc_system


#  perform all functions on Z axis data

# store ray z position on #temp score with 1 scaling to get block z position ray is in
execute store result score #temp rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1
# unless the block z position score is the same as #temp get block hitbox data
execute unless score Zblock rc_hitbox = #temp rc_system if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
# multiply #temp by 1000 to get it in the same precision range as ray-Z
scoreboard players operation #temp rc_system *= %1000 rc_const
# store ray y position to ray-Z score with a scale of 1000 for more precision
execute store result score rayZ rc_hitbox run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1000
# remove #temp socre from ray-Z score to get relative z position inside of the block
scoreboard players operation rayZ rc_hitbox -= #temp rc_system


# see if pos of ray entity is within corner scores
execute if score rayX rc_hitbox > cor0X rc_hitbox if score rayY rc_hitbox > cor0Y rc_hitbox if score rayZ rc_hitbox > cor0Z rc_hitbox if score rayX rc_hitbox < cor1X rc_hitbox if score rayY rc_hitbox < cor1Y rc_hitbox if score rayZ rc_hitbox < cor1Z rc_hitbox run tag @s add stop
