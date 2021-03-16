#set indexloop to index
data modify storage minecraft:ip_edit Dimension.index_loop set from storage minecraft:ip_edit Dimension.index
scoreboard players set index_loop_count dimension_info 0
function ipe:function/dimension/compare_index



#execute unless score loop_match ip_edit matches 0 if score loop_end ip_edit matches 0 run say no match
#execute if score loop_match ip_edit matches 0 run say match found