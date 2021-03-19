# say select_main

execute as @s[predicate=ipe:sneaking] run function ipe:function/select_portal_methods/select_multiple
execute as @s[predicate=!ipe:sneaking] run function ipe:function/select_portal_methods/select_single