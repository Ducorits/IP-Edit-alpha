tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}},distance=0..1] add crafting
tag @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}},distance=0..1] add crafting

playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1 1 1

schedule function ip:ip_edit/wand/animation 1t append
schedule function ip:ip_edit/wand/spawn 4s append