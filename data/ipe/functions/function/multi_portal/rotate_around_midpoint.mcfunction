

# execute as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 0 0 1 1
execute as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 0 1 0 .5


execute as @e[type=immersive_portals:portal,tag=selected] run function ipe:function/multi_portal/rotate_and_place

execute as @e[tag=selected,type=immersive_portals:portal] run function ipe:function/multi_portal/set_cube_destination