#debug
#say function_main
#select functions
execute at @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["selector"]}}}] anchored eyes positioned ^ ^ ^.5 run function ipe:function/select_portal_methods/select_main

#rotate functions
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate"]}}}] run function ipe:function/rotate/rotate_main

#destination_position functions
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["destination_position"]}}}] run function ipe:function/destination_position/destination_position_main
