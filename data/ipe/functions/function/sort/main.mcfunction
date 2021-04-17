#rotation 1 - 100
execute if entity @s[scores={ipe_function=1..30}] run function ipe:function/sort/rotate/portal
execute if entity @s[scores={ipe_function=31..60}] run function ipe:function/sort/rotate/body
execute if entity @s[scores={ipe_function=61..72}] run function ipe:function/sort/rotate/0_5

#dimension 101 - 200
execute if entity @s[scores={ipe_function=101}] run function ipe:function/dimension/cycle_previous
execute if entity @s[scores={ipe_function=102}] run function ipe:function/dimension/cycle_next
execute if entity @s[scores={ipe_function=103}] run function ipe:function/dimension/dimension_add
execute if entity @s[scores={ipe_function=104}] run function ipe:function/dimension/reset

#destination & position 201 - 300



#wand offhand 301 - 400

# edit connected portals 401 - 500
# - complete methods
execute if entity @s[scores={ipe_function=401}] run function ipe:function/complete_portal_methods/complete_bi_way
execute if entity @s[scores={ipe_function=402}] run function ipe:function/complete_portal_methods/complete_bi_face
execute if entity @s[scores={ipe_function=403}] run function ipe:function/complete_portal_methods/complete_bi_way_bi_face
# - remove methods
execute if entity @s[scores={ipe_function=404}] run function ipe:function/remove_portal_methods/delete
execute if entity @s[scores={ipe_function=405}] run function ipe:function/remove_portal_methods/remove_connected
execute if entity @s[scores={ipe_function=406}] run function ipe:function/remove_portal_methods/eradicate_clutter
execute if entity @s[scores={ipe_function=407}] run function ipe:function/remove_portal_methods/eradicate_cluster

# reload menu to hide trigger messages
execute if score @s ipe_function matches 1..100 run function ipe:menu/rotate/rotate_main
execute if score @s ipe_function matches 101..200 run function ipe:menu/dimension/dimension_main
execute if score @s ipe_function matches 201..300 run function ipe:menu/destination_position/destination_position_main
execute if score @s ipe_function matches 301..400 run function ipe:menu/mode/mode_main
execute if score @s ipe_function matches 401..500 run function ipe:menu/edit_connected/edit_connected_main

# SOUND :)
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ .5 .8 0

scoreboard players reset @s ipe_function
scoreboard players enable @s ipe_function