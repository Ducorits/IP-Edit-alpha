# x pos calculation
scoreboard players operation %math ip_edit = @s Xpos
scoreboard players operation %math ip_edit -= PosX ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation %math ip_edit *= %-1 ip_edit
execute unless score %math ip_edit matches 0..100 run scoreboard players operation @s ipe_mid_distance = %math ip_edit

# y pos calculation
scoreboard players operation %math ip_edit = @s Ypos
scoreboard players operation %math ip_edit -= PosY ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation %math ip_edit *= %-1 ip_edit
execute unless score %math ip_edit matches 0..100 run scoreboard players operation @s ipe_mid_distance = %math ip_edit
# z pos calculation
scoreboard players operation %math ip_edit = @s Zpos
scoreboard players operation %math ip_edit -= PosZ ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation %math ip_edit *= %-1 ip_edit
execute unless score %math ip_edit matches 0..100 run scoreboard players operation @s ipe_mid_distance = %math ip_edit
