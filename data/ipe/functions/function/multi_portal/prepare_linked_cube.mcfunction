# reset while testing
kill @e[tag=midpoint_pos]

# get position for all portals to use in calculation of average location (for a cube the average location is the same as the middle of the cube)
execute as @e[type=immersive_portals:portal,tag=selected] store result score @s Xpos run data get entity @s Pos[0] 1000
execute as @e[type=immersive_portals:portal,tag=selected] store result score @s Ypos run data get entity @s Pos[1] 1000
execute as @e[type=immersive_portals:portal,tag=selected] store result score @s Zpos run data get entity @s Pos[2] 1000

# update score of how many portals are now selected, also used for the average location.
execute store result score selected_portals ip_edit if entity @e[type=immersive_portals:portal,tag=selected]

# average x location
scoreboard players set PosX ip_edit 0
scoreboard players operation PosX ip_edit += @e[type=immersive_portals:portal,tag=selected] Xpos 
scoreboard players operation PosX ip_edit /= selected_portals ip_edit

# average Y location
scoreboard players set PosY ip_edit 0
scoreboard players operation PosY ip_edit += @e[type=immersive_portals:portal,tag=selected] Ypos 
scoreboard players operation PosY ip_edit /= selected_portals ip_edit

# average z location
scoreboard players set PosZ ip_edit 0
scoreboard players operation PosZ ip_edit += @e[type=immersive_portals:portal,tag=selected] Zpos 
scoreboard players operation PosZ ip_edit /= selected_portals ip_edit

# summon area effect cloud that will be set to the average location
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Particle:"block minecraft:air",Radius:0,Tags:["midpoint_pos"]}

# set average locations to midpoint entity
execute as @e[tag=midpoint_pos] store result entity @s Pos[0] double 0.001 run scoreboard players get PosX ip_edit
execute as @e[tag=midpoint_pos] store result entity @s Pos[1] double 0.001 run scoreboard players get PosY ip_edit
execute as @e[tag=midpoint_pos] store result entity @s Pos[2] double 0.001 run scoreboard players get PosZ ip_edit

# get the relative offset of the portal compared to the midpoint
execute as @e[type=immersive_portals:portal,tag=selected] run function ipe:function/multi_portal/portal_offset