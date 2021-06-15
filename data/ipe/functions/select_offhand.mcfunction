execute if score @s ipe_mode matches 1 run function ipe:function/destination/set_destination_to_aimpoint/start
execute if score @s ipe_mode matches 2 run function ipe:function/position/set_position_to_aimpoint/start
execute if score @s ipe_mode matches 3 run function ipe:function/dimension/cycle_dimension

execute if score @s ipe_mode matches 4 run function ipe:function/box/create/main
