# set rotation of from entity
execute as @e[tag=box_pos1,limit=1] run data modify entity @s Rotation[0] set value 180f
execute as @e[tag=box_pos1,limit=1] run data modify entity @s Rotation[1] set value 0f


portal cb_make_portal 1 1 @e[tag=box_pos1,limit=1] @e[tag=box_destination,limit=1]

execute at @e[tag=box_pos1,limit=1] run tag @e[type=immersive_portals:portal,distance=0..0.5] add ipe_this
# set middle position to already known values
scoreboard players operation @e[tag=ipe_this] ipe_box_midX = box_midposX ip_edit
scoreboard players operation @e[tag=ipe_this] ipe_box_midY = box_midposY ip_edit
scoreboard players operation @e[tag=ipe_this] ipe_box_midZ = box_midposZ ip_edit

# set middle position of box portal to known coördinates, this is done on a scale of 10000 for better rotation accuracy
execute store result score @e[tag=ipe_this] ipe_box_destX run data get entity @e[tag=box_destination,limit=1] Pos[0] 10000
execute store result score @e[tag=ipe_this] ipe_box_destY run data get entity @e[tag=box_destination,limit=1] Pos[1] 10000
execute store result score @e[tag=ipe_this] ipe_box_destZ run data get entity @e[tag=box_destination,limit=1] Pos[2] 10000

# calculate position from midpoint of portal
scoreboard players operation %math ip_edit = box_depth ip_edit
scoreboard players operation %math ip_edit /= %2 ip_edit
scoreboard players operation @e[tag=ipe_this] ipe_mid_distance = %math ip_edit

# calculate offset from midpoint (this is really doable because it is a box, so happy!)
scoreboard players operation %math ip_edit = @e[tag=ipe_this] ipe_box_midZ
scoreboard players operation %math ip_edit += @e[tag=ipe_this] ipe_mid_distance

# set portal position to position it should have (hey i am telling what i am doing, just not how i am doing it...)
execute as @e[tag=ipe_this] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s ipe_box_midX
execute as @e[tag=ipe_this] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s ipe_box_midY
execute as @e[tag=ipe_this] store result entity @s Pos[2] double 0.0001 run scoreboard players get %math ip_edit

# update portal dimensions to dimensions it should have
execute as @e[tag=ipe_this] store result entity @s height double 0.0001 run scoreboard players get box_height ip_edit
execute as @e[tag=ipe_this] store result entity @s width double 0.0001 run scoreboard players get box_width ip_edit

# update portal visually
execute as @e[tag=ipe_this] run portal set_portal_nbt {Fire:0s}


tag @e[tag=ipe_this] add ipe_box_portal
tag @e[tag=ipe_this] add selected
tag @e[tag=ipe_this] remove ipe_this