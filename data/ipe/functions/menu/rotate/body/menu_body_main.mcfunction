#menu items
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["body","body_items"]}}}] run function ip:ip_edit/menu/rotate/body/menu_body_items

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["body","x"]}}}] run function ip:ip_edit/menu/rotate/body/x

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["body","y"]}}}] run function ip:ip_edit/menu/rotate/body/y

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["body","z"]}}}] run function ip:ip_edit/menu/rotate/body/z