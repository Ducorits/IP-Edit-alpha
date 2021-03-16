#reset dimension index to basic dimensions
#remove all values
data remove storage minecraft:ip_edit Dimension
#append basic dimension values to index
data modify storage minecraft:ip_edit Dimension.index append value "minecraft:overworld"
data modify storage minecraft:ip_edit Dimension.index append value "minecraft:the_nether"
data modify storage minecraft:ip_edit Dimension.index append value "minecraft:the_end"
data modify storage minecraft:ip_edit Dimension.index append value "immersive_portals:alternate1"
data modify storage minecraft:ip_edit Dimension.index append value "immersive_portals:alternate2"
data modify storage minecraft:ip_edit Dimension.index append value "immersive_portals:alternate3"
data modify storage minecraft:ip_edit Dimension.index append value "immersive_portals:alternate4"
data modify storage minecraft:ip_edit Dimension.index append value "immersive_portals:alternate5"
#set cycle to index value
data modify storage minecraft:ip_edit Dimension.cycle set from storage minecraft:ip_edit Dimension.index
#update cycle pos score
scoreboard players set cycle_pos dimension_info 1

# update menu
scoreboard players set @s ipe_menu 4



