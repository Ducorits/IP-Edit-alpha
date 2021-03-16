scoreboard players remove destinationZ ip_edit 500
scoreboard players operation destinationZ ip_edit += @s cor0Z
execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation destinationZ ip_edit -= @s portal_width