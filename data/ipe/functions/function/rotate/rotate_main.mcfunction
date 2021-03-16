#rotate body
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["body"]}}}] run function ip:ip_edit/function/rotate/body/body_main
#rotate portal
execute as @s[tag=!chose,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["portal"]}}}] run function ip:ip_edit/function/rotate/portal/portal_main