scoreboard players remove destinationY ip_edit 500
scoreboard players operation destinationY ip_edit += @s cor0Y
execute as @e[tag=selected,type=immersive_portals:portal] run scoreboard players operation destinationY ip_edit -= @s portal_height