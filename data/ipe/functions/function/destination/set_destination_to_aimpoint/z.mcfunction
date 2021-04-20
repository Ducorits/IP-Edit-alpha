scoreboard players remove destinationZ ip_edit 500
scoreboard players operation destinationZ ip_edit += @p cor1Z
# width
scoreboard players operation %math ip_edit = @s portal_width
scoreboard players operation %math ip_edit *= axisWZ ip_edit
scoreboard players operation %math ip_edit /= %1000 ip_edit
scoreboard players operation %math ip_edit /= %2 ip_edit
scoreboard players operation %math ip_edit += %1 ip_edit

execute if score %math ip_edit matches 0.. run scoreboard players operation destinationZ ip_edit += %math ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation destinationZ ip_edit -= %math ip_edit

# height
scoreboard players operation %math ip_edit = @s portal_height
scoreboard players operation %math ip_edit *= axisHZ ip_edit
scoreboard players operation %math ip_edit /= %1000 ip_edit
scoreboard players operation %math ip_edit /= %2 ip_edit
scoreboard players operation %math ip_edit += %1 ip_edit

execute if score %math ip_edit matches 0.. run scoreboard players operation destinationZ ip_edit += %math ip_edit
execute if score %math ip_edit matches ..0 run scoreboard players operation destinationZ ip_edit -= %math ip_edit