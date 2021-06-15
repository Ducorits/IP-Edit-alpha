# summon entity to be used as Xvector
execute at @e[type=immersive_portals:portal,tag=selected] facing entity @p eyes run summon minecraft:area_effect_cloud ^1 ^ ^ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["rotateX"]}
# summon entity to be used as Yvector
execute at @e[type=immersive_portals:portal,tag=selected] facing entity @p eyes run summon minecraft:area_effect_cloud ^ ^1 ^ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["rotateY"]}

# Get position data of portal entity to be used in calculating vectors
execute as @e[type=immersive_portals:portal,tag=selected] store result score PosX ip_edit run data get entity @s Pos[0] 10000
execute as @e[type=immersive_portals:portal,tag=selected] store result score PosY ip_edit run data get entity @s Pos[1] 10000
execute as @e[type=immersive_portals:portal,tag=selected] store result score PosZ ip_edit run data get entity @s Pos[2] 10000

# get position data for x vector
execute as @e[tag=rotateX] store result score destinationX ip_edit run data get entity @s Pos[0] 10000
execute as @e[tag=rotateX] store result score destinationY ip_edit run data get entity @s Pos[1] 10000
execute as @e[tag=rotateX] store result score destinationZ ip_edit run data get entity @s Pos[2] 10000
# calculate vector
scoreboard players operation destinationX ip_edit -= PosX ip_edit
scoreboard players operation destinationY ip_edit -= PosY ip_edit
scoreboard players operation destinationZ ip_edit -= PosZ ip_edit
# set calculated vector as rotation of portal
execute as @e[type=immersive_portals:portal,tag=selected] store result entity @s axisWX double 0.0001 run scoreboard players get destinationX ip_edit
execute as @e[type=immersive_portals:portal,tag=selected] store result entity @s axisWY double 0.0001 run scoreboard players get destinationY ip_edit
execute as @e[type=immersive_portals:portal,tag=selected] store result entity @s axisWZ double 0.0001 run scoreboard players get destinationZ ip_edit

# get position data for x vector
execute as @e[tag=rotateY] store result score destinationX ip_edit run data get entity @s Pos[0] 10000
execute as @e[tag=rotateY] store result score destinationY ip_edit run data get entity @s Pos[1] 10000
execute as @e[tag=rotateY] store result score destinationZ ip_edit run data get entity @s Pos[2] 10000
# calculate vector
scoreboard players operation destinationX ip_edit -= PosX ip_edit
scoreboard players operation destinationY ip_edit -= PosY ip_edit
scoreboard players operation destinationZ ip_edit -= PosZ ip_edit
# set calculated vector as rotation of portal
execute as @e[type=immersive_portals:portal,tag=selected] store result entity @s axisHX double 0.0001 run scoreboard players get destinationX ip_edit
execute as @e[type=immersive_portals:portal,tag=selected] store result entity @s axisHY double 0.0001 run scoreboard players get destinationY ip_edit
execute as @e[type=immersive_portals:portal,tag=selected] store result entity @s axisHZ double 0.0001 run scoreboard players get destinationZ ip_edit

# update portal to fix rendering
execute as @e[tag=selected,type=immersive_portals:portal] run portal set_portal_nbt {Fire:-1s}

