#debug
#say menu_items
#clear menu
clear @s minecraft:carrot_on_a_stick{Tags:["ip_edit"]}
#add chose tag
tag @s add chose

#start menu item
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Tags:["menu_items","main","menu","ip_edit"],display:{Name:'{"text":"Menu"}',Lore:['{"text":"Right click to return to main menu."}']}}

#portal selector
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Tags:["function","selector","ip_edit"],display:{Name:'{"text":"Portal Selector"}',Lore:['{"text":"Right click with this item whilst looking at a portal to select."}','{"text":"Crouch to select multiple portals."}']}}

#rotate menu
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Tags:["rotate","rotate_items","menu","ip_edit"],display:{Name:'{"text":"Edit Portal Rotation & Body Rotation"}',Lore:['{"text":"Right click to open rotation menu."}']}}

#size and scale menu
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Tags:["size_scale","size_scale_items","menu","ip_edit"],display:{Name:'{"text":"Edit Size & Scale"}',Lore:['{"text":"Right click to open size & scale menu."}']}}

#destination position menu
replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Tags:["destination_position","destination_position_items","menu","ip_edit"],display:{Name:'{"text":"Edit Destination & Position"}',Lore:['{"text":"Right click to open destination & position menu."}']}}

#dimension menu
replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Tags:["dimension","dimension_items","menu","ip_edit"],display:{Name:'{"text":"Dimension Portal Options"}',Lore:['{"text":"Right click to open dimension menu."}']}}

#lore part '{"text":""}'

