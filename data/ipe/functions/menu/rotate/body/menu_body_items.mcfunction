#clear menu
clear @s minecraft:carrot_on_a_stick{Tags:["ip_edit"]}
#add chose tag
tag @s add chose

#start menu item
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Tags:["menu_items","main","menu","ip_edit"],display:{Name:'{"text":"Menu"}',Lore:['{"text":"Right click to return to main menu."}']}}

#portal selector
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Tags:["function","selector","ip_edit"],display:{Name:'{"text":"Portal Selector"}',Lore:['{"text":"Right click with this item whilst looking at a portal to select."}','{"text":"Crouch to select multiple portals."}']}}

#X axis menu
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Tags:["rotate","body","x","menu","ip_edit"],display:{Name:'{"text":"Rotate X Axis"}',Lore:['{"text":"Right click to open x axis body rotation menu."}']}}

#Y axis menu
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Tags:["rotate","body","y","menu","ip_edit"],display:{Name:'{"text":"Rotate Y Axis"}',Lore:['{"text":"Right click to open Y axis body rotation menu."}']}}

#Z axis menu
replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Tags:["rotate","body","z","menu","ip_edit"],display:{Name:'{"text":"Rotate Z Axis"}',Lore:['{"text":"Right click to open Z axis body rotation menu."}']}}