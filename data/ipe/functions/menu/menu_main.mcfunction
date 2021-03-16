#debug
say menu_main
#main menu items
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["main","menu_items"]}}}] run function ip:ip_edit/menu/menu_items
#Rotate submenu 
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate"]}}}] run function ip:ip_edit/menu/rotate/menu_rotate_main
#size and scale submenu

#destination & position submenu
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["destination_position"]}}}] run function ip:ip_edit/menu/destination_position/menu_destination_position_main

