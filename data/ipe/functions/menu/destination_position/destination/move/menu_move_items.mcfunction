#debug
#say menu_move_items
#clear menu
clear @s minecraft:carrot_on_a_stick{Tags:["ip_edit"]}
#add chose tag
tag @s add chose

#start menu item
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Tags:["menu_items","main","menu","ip_edit"],display:{Name:'{"text":"Menu"}',Lore:['{"text":"Right click to return to main menu."}']}}

#portal selector
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Tags:["function","selector","ip_edit"],display:{Name:'{"text":"Portal Selector"}',Lore:['{"text":"Right click with this item whilst looking at a portal to select."}','{"text":"Crouch to select multiple portals."}']}}

#back
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Tags:["destination_position","destination_items","destination","menu","ip_edit"],display:{Name:'{"text":"Back"}',Lore:['{"text":"Right click to go back to previous menu."}']}}

#move 1
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","move","1","function","ip_edit"],display:{Name:'{"text":"Move 1"}',Lore:['{"text":"Right click to move selected portal in aim direction."}']}}

#move .5
replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","move","0_5","function","ip_edit"],display:{Name:'{"text":"Move 0.5"}',Lore:['{"text":"Right click to move selected portal in aim direction."}']}}

#move .1
replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","move","0_1","function","ip_edit"],display:{Name:'{"text":"Move 0.1"}',Lore:['{"text":"Right click to move selected portal in aim direction."}']}}

#move .01
replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","move","0_01","function","ip_edit"],display:{Name:'{"text":"Move 0.01"}',Lore:['{"text":"Right click to move selected portal in aim direction."}']}}