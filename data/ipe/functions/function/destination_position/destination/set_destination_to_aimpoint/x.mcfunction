scoreboard players remove destinationX ip_edit 500
scoreboard players operation destinationX ip_edit += @s cor1X
execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation destinationX ip_edit += @s portal_width