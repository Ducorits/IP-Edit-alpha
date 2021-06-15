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

# now everything that has to do with the first portal position, i am going to use the ip_edit scoreboard but should replace later with another, so multiplayer compatability becomes a thing.
execute at @e[tag=endpoint_pos] align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Duration:2147483647,Particle:"block minecraft:air",Radius:0,Tags:["box_destination","ipe_box"]}

tag @s add ipe_box3
tag @s add ipe_done
say 3

function ipe:function/box/create/create_box
