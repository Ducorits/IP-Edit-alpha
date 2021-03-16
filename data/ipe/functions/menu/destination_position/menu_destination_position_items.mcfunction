#debug
say menu_destination_position_items
#clear menu
clear @s minecraft:carrot_on_a_stick{Tags:["ip_edit"]}
#add chose tag
tag @s add chose

#start menu item
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Tags:["menu_items","main","menu","ip_edit"],display:{Name:'{"text":"Menu"}',Lore:['{"text":"Right click to return to main menu."}']}}

#portal selector
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Tags:["function","selector","ip_edit"],display:{Name:'{"text":"Portal Selector"}',Lore:['{"text":"Right click with this item whilst looking at a portal to select."}','{"text":"Crouch to select multiple portals."}']}}

#portal destination
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Tags:["destination_position","destination_items","destination","menu","ip_edit"],display:{Name:'{"text":"Edit Destination"}',Lore:['{"text":"Right click to open destination menu."}']}}

#portal position
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Tags:["destination_position","position","menu","ip_edit"],display:{Name:'{"text":"Edit Position"}',Lore:['{"text":"Right click to open position menu."}']}}





#lore part '{"text":""}'

