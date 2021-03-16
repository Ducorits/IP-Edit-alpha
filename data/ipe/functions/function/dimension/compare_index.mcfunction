#set compare to first item on index_loop
data modify storage minecraft:ip_edit Dimension.compare set from storage minecraft:ip_edit Dimension.index_loop[0]

#compare first item with current dimension and store succes
execute store success score index_match dimension_info run data modify storage minecraft:ip_edit Dimension.compare set from entity @s Dimension

#loop index_loop
data modify storage minecraft:ip_edit Dimension.index_loop append from storage minecraft:ip_edit Dimension.index_loop[0]
data remove storage minecraft:ip_edit Dimension.index_loop[0]

#add index_loop_count 1 to keep count
scoreboard players add index_loop_count dimension_info 1

#set compare to new item in loop
data modify storage minecraft:ip_edit Dimension.compare set from storage minecraft:ip_edit Dimension.index_loop[0]

#determine if looped
execute store success score index_end dimension_info run data modify storage minecraft:ip_edit Dimension.compare set from storage minecraft:ip_edit Dimension.index[0]

execute unless score index_end dimension_info matches 0 unless score index_match dimension_info matches 0 run function ipe:function/dimension/compare_index