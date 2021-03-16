#menu items redirect
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate","rotate_items"]}}}] run function ip:ip_edit/menu/rotate/menu_rotate_items

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate","body"]}}}] run function ip:ip_edit/menu/rotate/body/menu_body_main

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rotate","portal"]}}}] run function ip:ip_edit/menu/rotate/portal/menu_portal_main