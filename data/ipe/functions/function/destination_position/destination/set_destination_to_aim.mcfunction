#reset stuff
tag @e remove stop
scoreboard players reset @e raycastCount
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

#get heigth of selected portals
execute as @e[tag=selected,type=immersive_portals:portal] store result score @s portal_height run data get entity @s height 1000
execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation @s portal_height /= %2 ip_edit

#get width of selected portals
execute as @e[tag=selected,type=immersive_portals:portal] store result score @s portal_width run data get entity @s width 1000
execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation @s portal_width /= %2 ip_edit

#get height offset of selected portals
#execute as @e[tag=selected,type=immersive_portals:portal] store result score @s portal_height_offset run data get entity @s height 1000
#execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation @s portal_height_offset %= %2 ip_edit

#get width offset of selected portals
#execute as @e[tag=selected,type=immersive_portals:portal] store result score @s portal_width_offset run data get entity @s width 1000
#execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation @s portal_width_offset %= %2 ip_edit


execute at @e[tag=endpoint_pos] align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["destination_pos"]}


execute as @e[tag=destination_pos] store result score destinationX ip_edit run data get entity @s Pos[0] 1000
execute as @e[tag=destination_pos] store result score destinationY ip_edit run data get entity @s Pos[1] 1000
execute as @e[tag=destination_pos] store result score destinationZ ip_edit run data get entity @s Pos[2] 1000


#determine what way the player is facing
#execute if score directionY rc_system matches 707..1000 run say down
#execute if score directionY rc_system matches -1000..-707 run say up
#execute if score directionX rc_system matches 707..1000 run say -X
#execute if score directionX rc_system matches -1000..-707 run say +X
#execute if score directionZ rc_system matches 707..1000 run say -Z
#execute if score directionZ rc_system matches -1000..-707 run say +Z

#calculate relative to what side of the block
scoreboard players operation blockSideX rc_system -= @s Xpos
scoreboard players operation blockSideY rc_system -= @s Ypos
scoreboard players operation blockSideZ rc_system -= @s Zpos

#determine wich side
#+X
execute if score blockSideX rc_system >= @s cor1X run function ipe:function/destination_position/destination/set_destination_to_aimpoint/x
#-X
execute if score blockSideX rc_system <= @s cor0X run function ipe:function/destination_position/destination/set_destination_to_aimpoint/-x
#up
execute if score blockSideY rc_system >= @s cor1Y run function ipe:function/destination_position/destination/set_destination_to_aimpoint/y
#down
execute if score blockSideY rc_system <= @s cor0Y run function ipe:function/destination_position/destination/set_destination_to_aimpoint/-y
#+z
execute if score blockSideZ rc_system >= @s cor1Z run function ipe:function/destination_position/destination/set_destination_to_aimpoint/z
#-z
execute if score blockSideZ rc_system <= @s cor0Z run function ipe:function/destination_position/destination/set_destination_to_aimpoint/-z

execute as @e[tag=destination_pos] store result entity @s Pos[0] double 0.001 run scoreboard players get destinationX ip_edit
execute as @e[tag=destination_pos] store result entity @s Pos[1] double 0.001 run scoreboard players get destinationY ip_edit
execute as @e[tag=destination_pos] store result entity @s Pos[2] double 0.001 run scoreboard players get destinationZ ip_edit

# set portal to destination to entity used
execute as @e[tag=selected,type=immersive_portals:portal] run portal set_portal_destination_to @e[tag=destination_pos,limit=1]