# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.


#execute as @e[scores={r_clicked=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["ip_edit"]}}}] run function ipe:select_used_item

execute as @e[scores={ipe_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["ip_edit"]}}}] run function ipe:select_used_item
execute as @e[scores={ipe_click=1..},nbt={Inventory:[{Slot: -106b, id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["ip_edit"]}}]}] run function ipe:select_offhand

execute as @a[scores={ipe_menu=1..}] run function ipe:select_menu

execute as @a[scores={ipe_function=1..}] run function ipe:function/sort/main

execute as @a[scores={ipe_drop=1..}] at @s if entity @e[type=item,distance=0..2,limit=1,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Tags:["ip_edit"]}}}] run function ipe:drop

# particles :D
execute at @e[type=immersive_portals:portal,tag=selected] run particle minecraft:dust 0 1 0 1.3 ~ ~ ~ .2 .2 .2 0 1 force


#scoreboard players set @a sneaking 0
#scoreboard players set @e r_clicked 0
scoreboard players enable @a ipe_mode
execute as @a[scores={ipe_click=1..}] run scoreboard players reset @s ipe_click
execute as @a[scores={ipe_drop=1..}] run scoreboard players reset @s ipe_drop