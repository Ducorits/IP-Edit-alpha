#start raycast
execute at @s anchored eyes positioned ^ ^ ^.5 run function rc:raycast/draw

execute as @e[tag=selected,type=immersive_portals:portal] store result score @s destinationX run data get entity @s destinationX 1000
execute as @e[tag=selected,type=immersive_portals:portal] store result score @s destinationY run data get entity @s destinationY 1000
execute as @e[tag=selected,type=immersive_portals:portal] store result score @s destinationZ run data get entity @s destinationZ 1000

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["1"]}}}] run scoreboard players set move_amount ip_edit 1000
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["0_5"]}}}] run scoreboard players set move_amount ip_edit 500
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["0_1"]}}}] run scoreboard players set move_amount ip_edit 100
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["0_01"]}}}] run scoreboard players set move_amount ip_edit 10

#determine what way the player is facing
execute if score directionY rc_system matches 707..1000 run say down
execute if score directionY rc_system matches -1000..-707 run say up
execute if score directionX rc_system matches 707..1000 run say -X
execute if score directionX rc_system matches -1000..-707 run say +X
execute if score directionZ rc_system matches 707..1000 run say -Z
execute if score directionZ rc_system matches -1000..-707 run say +Z