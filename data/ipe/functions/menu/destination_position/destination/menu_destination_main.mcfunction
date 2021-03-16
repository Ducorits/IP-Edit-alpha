#debug
#say menu_destination_main
#menu items
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["destination_items"]}}}] run function ip:ip_edit/menu/destination_position/destination/menu_destination_items

#move destination menu
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["move"]}}}] run function ip:ip_edit/menu/destination_position/destination/move/menu_move_main

#set destination to
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["set"]}}}] run function ip:ip_edit/menu/destination_position/destination/destination/set_destination_to/menu_set_destination_to_main

#set destination dimension
