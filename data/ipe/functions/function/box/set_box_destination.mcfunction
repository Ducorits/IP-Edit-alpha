portal remove_connected_portals

# get position of destination point
# execute as @e[tag=destpoint_pos] store result score PosX ip_edit run data get entity @s Pos[0] 10000
# execute as @e[tag=destpoint_pos] store result score PosY ip_edit run data get entity @s Pos[1] 10000
# execute as @e[tag=destpoint_pos] store result score PosZ ip_edit run data get entity @s Pos[2] 10000
scoreboard players operation PosX ip_edit = @s ipe_box_destX
scoreboard players operation PosY ip_edit = @s ipe_box_destY
scoreboard players operation PosZ ip_edit = @s ipe_box_destZ

# get portal destination
execute store result score destinationX ip_edit run data get entity @s destinationX 10000
execute store result score destinationY ip_edit run data get entity @s destinationY 10000
execute store result score destinationZ ip_edit run data get entity @s destinationZ 10000

### get portal rotation data in the form of a unit vector
execute as @s run portal relatively_move_portal_destination 0 0 1

execute store result score vecX ip_edit run data get entity @s destinationX 10000
execute store result score vecY ip_edit run data get entity @s destinationY 10000
execute store result score vecZ ip_edit run data get entity @s destinationZ 10000

# calculate vector of rotation
scoreboard players operation vecX ip_edit -= destinationX ip_edit
scoreboard players operation vecY ip_edit -= destinationY ip_edit
scoreboard players operation vecZ ip_edit -= destinationZ ip_edit



# placement calculation?
scoreboard players operation %math ip_edit = @s ipe_mid_distance
scoreboard players operation %math ip_edit *= vecX ip_edit
scoreboard players operation %math ip_edit /= %10000 ip_edit
scoreboard players operation PosX ip_edit -= %math ip_edit

scoreboard players operation %math ip_edit = @s ipe_mid_distance
scoreboard players operation %math ip_edit *= vecY ip_edit
scoreboard players operation %math ip_edit /= %10000 ip_edit
scoreboard players operation PosY ip_edit -= %math ip_edit

scoreboard players operation %math ip_edit = @s ipe_mid_distance
scoreboard players operation %math ip_edit *= vecZ ip_edit
scoreboard players operation %math ip_edit /= %10000 ip_edit
scoreboard players operation PosZ ip_edit -= %math ip_edit


execute store result entity @s destinationX double 0.0001 run scoreboard players get PosX ip_edit
execute store result entity @s destinationY double 0.0001 run scoreboard players get PosY ip_edit
execute store result entity @s destinationZ double 0.0001 run scoreboard players get PosZ ip_edit

# set portal destination to entity used
# portal set_portal_position_to @e[tag=destination_pos,limit=1]

# update portal visually
portal set_portal_nbt {Fire:0s}
portal complete_bi_way_portal

# kill entities used to set destination
# kill @e[tag=destination_pos,limit=1]