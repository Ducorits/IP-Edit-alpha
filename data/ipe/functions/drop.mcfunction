function ipe:menu/main_menu

kill @e[type=item,distance=0..2,limit=1,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Tags:["ip_edit"]}}}]

item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{Tags:["ip_edit"],display:{Name:'{"text":"Space Warper 0.1"}',Lore:['{"text":"big boy warp wand."}']}} 1
scoreboard players set @s ipe_drop 0