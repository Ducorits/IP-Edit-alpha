# kill destpoint entity
kill @e[tag=destpoint_pos]
#reset stuff
tag @s remove stop
scoreboard players reset @s raycastCount
#xcor
scoreboard players reset @s cor0X
scoreboard players reset @s cor1X
#ycor
scoreboard players reset @s cor0Y
scoreboard players reset @s cor1Y
#zcor
scoreboard players reset @s cor0Z
scoreboard players reset @s cor1Z

#start raycast
execute at @s anchored eyes positioned ^ ^ ^.5 run function rc:raycast/start

#calculate relative to what side of the block
scoreboard players operation blockSideX rc_system -= @s Xpos
scoreboard players operation blockSideY rc_system -= @s Ypos
scoreboard players operation blockSideZ rc_system -= @s Zpos

execute at @e[tag=endpoint_pos] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Particle:"block minecraft:air",Radius:0,Tags:["destpoint_pos"]}

execute as @e[tag=selected,type=immersive_portals:portal] run function ipe:function/box/set_box_destination