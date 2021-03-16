#debug
say menu_destination_position_main
#menu items
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["destination_position_items"]}}}] run function ip:ip_edit/menu/destination_position/menu_destination_position_items

#destination
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["destination"]}}}] run function ip:ip_edit/menu/destination_position/destination/menu_destination_main
#position
#execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["position"]}}}] run function ip:ip_edit/menu/destination_position/position/
