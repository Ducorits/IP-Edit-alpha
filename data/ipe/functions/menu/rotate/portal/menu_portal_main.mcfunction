#menu items
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["portal","portal_items"]}}}] run function ip:ip_edit/menu/rotate/portal/menu_portal_items

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["portal","x"]}}}] run function ip:ip_edit/menu/rotate/portal/x

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["portal","y"]}}}] run function ip:ip_edit/menu/rotate/portal/y

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["portal","z"]}}}] run function ip:ip_edit/menu/rotate/portal/z