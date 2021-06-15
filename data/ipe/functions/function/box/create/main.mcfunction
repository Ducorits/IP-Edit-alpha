tag @s remove ipe_done
execute unless entity @s[tag=ipe_box1] run function ipe:function/box/create/pos1

execute if entity @s[tag=ipe_box1] unless entity @s[tag=ipe_done] unless entity @s[tag=ipe_box2] run function ipe:function/box/create/pos2

execute if entity @s[tag=ipe_box2] unless entity @s[tag=ipe_done] unless entity @s[tag=ipe_box3] run function ipe:function/box/create/destination