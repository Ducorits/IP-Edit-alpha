#debug
# say select_used_item
execute at @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["ip_edit"]}}}] anchored eyes positioned ^ ^ ^.5 run function ipe:function/select_portal_methods/select_main


#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["menu"]}}}] run function ipe:menu/menu_main

#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["function"]}}}] run function ipe:function/function_main

#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["set_destination"]}}}] run function ipe:function/destination_position/destination/set_destination_to_aim



#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate_x"]}}}] run function ipe:rotate/portal/x/x_main

#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate_y"]}}}] run function ipe:rotate/portal/y/y_main

#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate_z"]}}}] run function ipe:rotate/portal/z/z_main

#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Complete Bi Way Portal"}'}}}}] run function ipe:complete_portal_methods/complete_bi_way_portal

tag @s remove chose

