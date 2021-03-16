#debug
#say menu_destination_items
#clear menu
clear @s minecraft:carrot_on_a_stick{Tags:["ip_edit"]}
#add chose tag
tag @s add chose

#start menu item
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Tags:["menu_items","main","menu","ip_edit"],display:{Name:'{"text":"Menu"}',Lore:['{"text":"Right click to return to main menu."}']}}

#portal selector
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Tags:["function","selector","ip_edit"],display:{Name:'{"text":"Portal Selector"}',Lore:['{"text":"Right click with this item whilst looking at a portal to select."}','{"text":"Crouch to select multiple portals."}']}}

#move destination
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","move","move_items","menu","ip_edit"],display:{Name:'{"text":"Move Destination"}',Lore:['{"text":"Right click to open move destination menu."}']}}

#set destination to
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","set","function","ip_edit"],display:{Name:'{"text":"Set Destination"}',Lore:['{"text":"Right click to open set destination menu."}']}}

#set destination dimension
replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Tags:["destination_position","destination","dimension","menu","ip_edit"],display:{Name:'{"text":"Set Dimension"}',Lore:['{"text":"Right click to open set destination dimension menu."}']}}