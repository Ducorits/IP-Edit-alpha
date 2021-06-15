tag @s remove ipe_done
tag @s remove ipe_box1
tag @s remove ipe_box2
tag @s remove ipe_box3


# get all positions of entities used
execute as @e[tag=box_pos1] store result score box_pos1X ip_edit run data get entity @s Pos[0] 10000
execute as @e[tag=box_pos1] store result score box_pos1Y ip_edit run data get entity @s Pos[1] 10000
execute as @e[tag=box_pos1] store result score box_pos1Z ip_edit run data get entity @s Pos[2] 10000

execute as @e[tag=box_pos2] store result score box_pos2X ip_edit run data get entity @s Pos[0] 10000
execute as @e[tag=box_pos2] store result score box_pos2Y ip_edit run data get entity @s Pos[1] 10000
execute as @e[tag=box_pos2] store result score box_pos2Z ip_edit run data get entity @s Pos[2] 10000

execute as @e[tag=box_destination] store result score box_destinationX ip_edit run data get entity @s Pos[0] 10000
execute as @e[tag=box_destination] store result score box_destinationY ip_edit run data get entity @s Pos[1] 10000
execute as @e[tag=box_destination] store result score box_destinationZ ip_edit run data get entity @s Pos[2] 10000

# math! more math!
# width
scoreboard players operation %math ip_edit = box_pos2X ip_edit
scoreboard players operation %math ip_edit -= box_pos1X ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation %math ip_edit *= %-1 ip_edit
scoreboard players operation box_width ip_edit = %math ip_edit
# height
scoreboard players operation %math ip_edit = box_pos2Y ip_edit
scoreboard players operation %math ip_edit -= box_pos1Y ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation %math ip_edit *= %-1 ip_edit
scoreboard players operation box_height ip_edit = %math ip_edit
# depth
scoreboard players operation %math ip_edit = box_pos2Z ip_edit
scoreboard players operation %math ip_edit -= box_pos1Z ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation %math ip_edit *= %-1 ip_edit
scoreboard players operation box_depth ip_edit = %math ip_edit

# middle of box math
# X
scoreboard players operation %math ip_edit = box_pos1X ip_edit
scoreboard players operation %math ip_edit += box_pos2X ip_edit
scoreboard players operation %math ip_edit /= %2 ip_edit
scoreboard players operation box_midposX ip_edit = %math ip_edit
# Y
scoreboard players operation %math ip_edit = box_pos1Y ip_edit
scoreboard players operation %math ip_edit += box_pos2Y ip_edit
scoreboard players operation %math ip_edit /= %2 ip_edit
scoreboard players operation box_midposY ip_edit = %math ip_edit
# Z
scoreboard players operation %math ip_edit = box_pos1Z ip_edit
scoreboard players operation %math ip_edit += box_pos2Z ip_edit
scoreboard players operation %math ip_edit /= %2 ip_edit
scoreboard players operation box_midposZ ip_edit = %math ip_edit

# lets make some portals!
function ipe:function/box/create/top
function ipe:function/box/create/bottom
function ipe:function/box/create/east
function ipe:function/box/create/west
function ipe:function/box/create/north
function ipe:function/box/create/south

# set the destinations correctly
execute as @e[tag=ipe_box_portal,tag=selected] run function ipe:function/box/set_box_destination





kill @e[tag=ipe_box]