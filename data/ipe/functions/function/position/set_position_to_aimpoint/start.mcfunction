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

execute as @e[tag=selected,type=immersive_portals:portal] run function ipe:function/position/set_position_to_aimpoint/set_position