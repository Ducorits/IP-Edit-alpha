# say select_main

tag @e remove stop
scoreboard players reset @e rc_count

execute as @s[predicate=ipe:sneaking] run function ipe:function/select_portal_methods/select_multiple
execute as @s[predicate=!ipe:sneaking] run function ipe:function/select_portal_methods/select_single