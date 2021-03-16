# portal
# x
execute if entity @s[scores={ipe_function=61}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 1 0 0 -.5
execute if entity @s[scores={ipe_function=62}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 1 0 0 .5
# y
execute if entity @s[scores={ipe_function=63}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 0 1 0 -.5
execute if entity @s[scores={ipe_function=64}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 0 1 0 .5
# z
execute if entity @s[scores={ipe_function=65}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 0 0 1 -.5
execute if entity @s[scores={ipe_function=66}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_rotation 0 0 1 .5

# body
# x
execute if entity @s[scores={ipe_function=67}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 1 0 0 -.5
execute if entity @s[scores={ipe_function=68}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 1 0 0 .5
# y
execute if entity @s[scores={ipe_function=69}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 0 1 0 -.5
execute if entity @s[scores={ipe_function=70}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 0 1 0 .5
# z
execute if entity @s[scores={ipe_function=71}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 0 0 1 -.5
execute if entity @s[scores={ipe_function=72}] at @s as @e[type=immersive_portals:portal,tag=selected] run portal rotate_portal_body 0 0 1 .5
#reload menu to hide trigger message
function ipe:menu/rotate/rotate_main