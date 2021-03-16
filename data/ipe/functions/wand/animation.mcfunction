execute at @e[tag=crafting,type=item] run particle portal ~ ~ ~ 0 0 0 .3 1 normal @a

execute if entity @e[tag=crafting,type=item] run schedule function ip:ip_edit/wand/animation 2t append