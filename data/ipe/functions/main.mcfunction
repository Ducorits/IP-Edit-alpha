# This is the "main" function. This will play every frame of the game.

# detect if you right clicked the wand in your main hand and run a function if so
execute as @e[scores={ipe_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["ip_edit"]}}}] run function ipe:select_used_item

# detect if you right clicked the wand in your off hand and run a function if so
execute as @e[scores={ipe_click=1..},nbt={Inventory:[{Slot: -106b, id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["ip_edit"]}}]}] run function ipe:select_offhand

# detect any menu score to be sorted to correct menu using function
execute as @a[scores={ipe_menu=1..}] run function ipe:select_menu

# detect if any function was called in the menu if so sort to correct function using function
execute as @a[scores={ipe_function=1..}] run function ipe:function/sort/main

#
execute as @a[scores={ipe_drop=1..}] at @s if entity @e[type=item,distance=0..2,limit=1,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Tags:["ip_edit"]}}}] run function ipe:drop

# particles :D
execute at @e[type=immersive_portals:portal,tag=selected] run particle minecraft:dust 0 1 0 1.3 ~ ~ ~ .2 .2 .2 0 1 force

# reset used scoreboards
scoreboard players enable @a ipe_mode
execute as @a[scores={ipe_click=1..}] run scoreboard players reset @s ipe_click
execute as @a[scores={ipe_drop=1..}] run scoreboard players reset @s ipe_drop

# reset unused score. (need to remove scoreboard from pack)
execute as @a[scores={r_clicked=1..}] run scoreboard players reset @a r_clicked