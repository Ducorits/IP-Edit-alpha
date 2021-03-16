#cycle backward
data modify storage minecraft:ip_edit Dimension.cycle prepend from storage minecraft:ip_edit Dimension.cycle[-1]
data remove storage minecraft:ip_edit Dimension.cycle[-1]

#set dimensionTo nbt to updated cycle
execute as @e[tag=selected,type=immersive_portals:portal] run data modify entity @s dimensionTo set from storage minecraft:ip_edit Dimension.cycle[0]
#update portal to fix rendering
execute as @e[tag=selected,type=immersive_portals:portal] run portal set_portal_nbt {Fire:-1s}
#update cycle score
scoreboard players remove cycle_pos dimension_info 1

execute if score cycle_pos dimension_info > index_size dimension_info run scoreboard players set cycle_pos dimension_info 1
execute if score cycle_pos dimension_info matches ..0 run scoreboard players operation cycle_pos dimension_info = index_size dimension_info
#message what dimension it is set to
title @s actionbar [{"text":"Set dimension to ","color":"blue"},{"nbt":"Dimension.cycle[0]","storage":"minecraft:ip_edit","color":"green"},{"text":" "},{"score":{"name":"cycle_pos","objective":"dimension_info"},"color":"blue"},{"text":" of ","color":"blue"},{"score":{"name":"index_size","objective":"dimension_info"},"color":"blue"},{"text":".","color":"blue"}]
