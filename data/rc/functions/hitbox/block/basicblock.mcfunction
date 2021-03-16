# slabbottom
# set scoreboard corner values
scoreboard players set @s cor0X 0
scoreboard players set @s cor0Y 0
scoreboard players set @s cor0Z 0
scoreboard players set @s cor1X 1000
scoreboard players set @s cor1Y 1000
scoreboard players set @s cor1Z 1000

# summon corner entities
#execute positioned ~ ~ ~ unless entity @e[limit=1,distance=...001,tag=cor] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["cor","box"]}

# summon ray entity
# summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","box"]}

# # get pos of block using ray entity
# execute store result score @s Xpos run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[0] 1
# execute store result score @s Ypos run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[1] 1
# execute store result score @s Zpos run data get entity @e[type=area_effect_cloud,limit=1,distance=...0001,tag=ray] Pos[2] 1

# # use gotten pos to update block pos
# scoreboard players operation @s Xblock = @s Xpos
# scoreboard players operation @s Yblock = @s Ypos
# scoreboard players operation @s Zblock = @s Zpos


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
# # see if pos of ray entity is within corner scores
# execute if score @s rayX > @s cor0X if score @s rayY > @s cor0Y if score @s rayZ > @s cor0Z if score @s rayX < @s cor1X if score @s rayY < @s cor1Y if score @s rayZ < @s cor1Z run tag @s add stop