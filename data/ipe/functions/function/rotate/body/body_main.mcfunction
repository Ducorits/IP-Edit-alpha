#rotate axis selection
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["x"]}}}] run function ip:ip_edit/function/rotate/body/x/x_main

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["y"]}}}] run function ip:ip_edit/function/rotate/body/y/y_main

execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["z"]}}}] run function ip:ip_edit/function/rotate/body/z/z_main