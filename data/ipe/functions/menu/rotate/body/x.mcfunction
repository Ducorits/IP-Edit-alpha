#clear menu
clear @s minecraft:carrot_on_a_stick{Tags:["ip_edit"]}
#add chose tag
tag @s add chose

#start menu item
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Tags:["menu_items","main","menu","ip_edit"],display:{Name:'{"text":"Menu"}',Lore:['{"text":"Right click to return to main menu."}']}}

#portal selector
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Tags:["function","selector","ip_edit"],display:{Name:'{"text":"Portal Selector"}',Lore:['{"text":"Right click with this item whilst looking at a portal to select."}','{"text":"Crouch to select multiple portals."}']}}

#x rotation menu items
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Tags:["rotate","rotate_items","menu","ip_edit"],display:{Name:'{"text":"Edit Portal Rotation & Body Rotation"}',Lore:['{"text":"Right click to open rotation menu."}']}}

replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Tags:["function","rotate","body","x","ip_edit"],display:{Name:'{"text":"Rotate X 90"}',Lore:['{"text":"Right click to rotate 90 on X axis."}','{"text":"Crouch to invert direction."}']}}

replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Tags:["function","rotate","body","x","ip_edit"],display:{Name:'{"text":"Rotate X 45"}',Lore:['{"text":"Right click to rotate 45 on X axis."}','{"text":"Crouch to invert direction."}']}}

replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Tags:["function","rotate","body","x","ip_edit"],display:{Name:'{"text":"Rotate X 10"}',Lore:['{"text":"Right click to rotate 10 on X axis."}','{"text":"Crouch to invert direction."}']}}

replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{Tags:["function","rotate","body","x","ip_edit"],display:{Name:'{"text":"Rotate X 5"}',Lore:['{"text":"Right click to rotate 5 on X axis."}','{"text":"Crouch to invert direction."}']}}

replaceitem entity @s hotbar.7 minecraft:carrot_on_a_stick{Tags:["function","rotate","body","x","ip_edit"],display:{Name:'{"text":"Rotate X 1"}',Lore:['{"text":"Right click to rotate 1 on X axis."}','{"text":"Crouch to invert direction."}']}}

replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{Tags:["function","rotate","body","x","ip_edit"],display:{Name:'{"text":"Rotate X .5"}',Lore:['{"text":"Right click to rotate .5 on X axis."}','{"text":"Crouch to invert direction."}']}}

