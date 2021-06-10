# get midpoint position
execute as @e[tag=midpoint_pos] store result score PosX ip_edit run data get entity @s Pos[0] 1000
execute as @e[tag=midpoint_pos] store result score PosY ip_edit run data get entity @s Pos[1] 1000
execute as @e[tag=midpoint_pos] store result score PosZ ip_edit run data get entity @s Pos[2] 1000


# get portal position
execute store result score @s Xpos run data get entity @s Pos[0] 1000
execute store result score @s Ypos run data get entity @s Pos[1] 1000
execute store result score @s Zpos run data get entity @s Pos[2] 1000

### get portal rotation data
execute as @s run portal relatively_move_portal 0 0 1

execute store result score destinationX ip_edit run data get entity @s Pos[0] 1000
execute store result score destinationY ip_edit run data get entity @s Pos[1] 1000
execute store result score destinationZ ip_edit run data get entity @s Pos[2] 1000

# calculate vector of rotation
scoreboard players operation destinationX ip_edit -= @s Xpos
scoreboard players operation destinationY ip_edit -= @s Ypos
scoreboard players operation destinationZ ip_edit -= @s Zpos



# placement calculation?
scoreboard players operation %math ip_edit = @s ipe_mid_distance
scoreboard players operation %math ip_edit *= destinationX ip_edit
scoreboard players operation %math ip_edit /= %1000 ip_edit
scoreboard players operation PosX ip_edit -= %math ip_edit

scoreboard players operation %math ip_edit = @s ipe_mid_distance
scoreboard players operation %math ip_edit *= destinationY ip_edit
scoreboard players operation %math ip_edit /= %1000 ip_edit
scoreboard players operation PosY ip_edit -= %math ip_edit

scoreboard players operation %math ip_edit = @s ipe_mid_distance
scoreboard players operation %math ip_edit *= destinationZ ip_edit
scoreboard players operation %math ip_edit /= %1000 ip_edit
scoreboard players operation PosZ ip_edit -= %math ip_edit

# set portal destination
execute store result entity @s Pos[0] double 0.001 run scoreboard players get PosX ip_edit
execute store result entity @s Pos[1] double 0.001 run scoreboard players get PosY ip_edit
execute store result entity @s Pos[2] double 0.001 run scoreboard players get PosZ ip_edit

# set portal destination to entity used
# portal set_portal_position_to @e[tag=destination_pos,limit=1]

# update portal visually
portal set_portal_nbt {Fire:0s}

# kill entities used to set destination
kill @e[tag=destination_pos,limit=1]