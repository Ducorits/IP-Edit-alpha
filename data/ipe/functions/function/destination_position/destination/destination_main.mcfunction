#debug
#say destination_main

#set function
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["set"]}}}] run function ipe:function/destination_position/destination/set_destination_to_aim

#move function
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["move"]}}}] run function ipe:function/destination_position/destination/move/move_main