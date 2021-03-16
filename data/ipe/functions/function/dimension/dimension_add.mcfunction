#determine if dimension is in index
function ipe:function/dimension/start_compare_index

#if  not in index add dimension function caller is in to index
execute unless score index_match dimension_info matches 0 if score index_end dimension_info matches 0 run data modify storage minecraft:ip_edit Dimension.index append from entity @s Dimension

#update dimension cycle to include new dimension
execute unless score index_match dimension_info matches 0 if score index_end dimension_info matches 0 run data modify storage minecraft:ip_edit Dimension.cycle set from storage minecraft:ip_edit Dimension.index

#update index size score
execute store result score index_size dimension_info if data storage minecraft:ip_edit Dimension.index[]
#update cycle pos score
scoreboard players set cycle_pos dimension_info 1

#if not in index send message to function caller
execute unless score index_match dimension_info matches 0 if score index_end dimension_info matches 0 run title @s actionbar [{"text":"Adding current dimension to index, now ","color":"green"},{"score":{"name":"index_size","objective":"dimension_info"},"color":"blue"},{"text":" dimensions in index.","color":"green"}]
#if dimension is in index message function caller that dimension is already in index
execute if score index_match dimension_info matches 0 run title @s actionbar [{"text":"Current dimension already in index. ","color":"red"},{"text":"(","color":"red"},{"score":{"name":"index_loop_count","objective":"dimension_info"},"color":"blue"},{"text":" of ","color":"blue"},{"score":{"name":"index_size","objective":"dimension_info"},"color":"blue"},{"text":").","color":"red"}]

# update menu
scoreboard players set @s ipe_menu 4