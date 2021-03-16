#tag @s add stop



# summon ray entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","box"]}
execute unless block ~ ~ ~ #rc:non_full_block run function rc:hitbox/block/basicblock

# get pos of block using ray entity
# perform all functions on X axis data
execute store result score #temp rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1
execute unless score @s Xblock = #temp rc_system if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
#execute unless score @s Xblock = #temp rc_system run scoreboard players operation @s Xblock = #temp rc_system
scoreboard players operation #temp rc_system *= %1000 rc_cont
execute store result score @s rayX run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1000
scoreboard players operation @s rayX -= #temp rc_system

#  perform all functions on Y axis data
execute store result score #temp rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1
execute unless score @s Yblock = #temp rc_system if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
#execute unless score @s Yblock = #temp rc_system run scoreboard players operation @s Yblock = #temp rc_system
scoreboard players operation #temp rc_system *= %1000 rc_cont
execute store result score @s rayY run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1000
scoreboard players operation @s rayY -= #temp rc_system

#  perform all functions on Z axis data
execute store result score #temp rc_system run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1
execute unless score @s Zblock = #temp rc_system if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
#execute unless score @s Zblock = #temp rc_system run scoreboard players operation @s Zblock = #temp rc_system
scoreboard players operation #temp rc_system *= %1000 rc_cont
execute store result score @s rayZ run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1000
scoreboard players operation @s rayZ -= #temp rc_system


# execute store result score @s Xpos run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1
# execute store result score @s Ypos run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1
# execute store result score @s Zpos run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1

# # select by type
# execute unless score @s Xblock = @s Xpos if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
# execute unless score @s Yblock = @s Ypos if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
# execute unless score @s Zblock = @s Zpos if block ~ ~ ~ #rc:sort/l0 run function rc:hitbox/sort/l0
# execute unless block ~ ~ ~ #rc:non_full_block run function rc:hitbox/block/basicblock

# # use gotten pos to update block pos
# execute unless score @s Xblock = @s Xpos run scoreboard players operation @s Xblock = @s Xpos
# execute unless score @s Yblock = @s Ypos run scoreboard players operation @s Yblock = @s Ypos
# execute unless score @s Zblock = @s Zpos run scoreboard players operation @s Zblock = @s Zpos

# # multiply block position by 1000 so it is in the same range as ray position
# scoreboard players operation @s Xpos *= %1000 rc_cont
# scoreboard players operation @s Ypos *= %1000 rc_cont
# scoreboard players operation @s Zpos *= %1000 rc_cont 

# # get pos of ray entity
# execute store result score @s rayX run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1000
# execute store result score @s rayY run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1000
# execute store result score @s rayZ run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1000

# #calculate relative position in block
# scoreboard players operation @s rayX -= @s Xpos
# scoreboard players operation @s rayY -= @s Ypos
# scoreboard players operation @s rayZ -= @s Zpos

# see if pos of ray entity is within corner scores
execute if score @s rayX > @s cor0X if score @s rayY > @s cor0Y if score @s rayZ > @s cor0Z if score @s rayX < @s cor1X if score @s rayY < @s cor1Y if score @s rayZ < @s cor1Z run tag @s add stop
