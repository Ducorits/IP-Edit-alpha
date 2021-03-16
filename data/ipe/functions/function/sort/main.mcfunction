#rotation 1 - 100
execute if entity @s[scores={ipe_function=1..30}] run function ipe:function/sort/rotate/portal
execute if entity @s[scores={ipe_function=31..60}] run function ipe:function/sort/rotate/body
execute if entity @s[scores={ipe_function=61..72}] run function ipe:function/sort/rotate/0_5

#destination & position 201 - 300

#dimension 101 - 200
execute if entity @s[scores={ipe_function=101}] run function ipe:function/dimension/cycle_previous
execute if entity @s[scores={ipe_function=102}] run function ipe:function/dimension/cycle_next
execute if entity @s[scores={ipe_function=103}] run function ipe:function/dimension/dimension_add
execute if entity @s[scores={ipe_function=104}] run function ipe:function/dimension/reset

#wand offhand 301 - 400



scoreboard players reset @s ipe_function
scoreboard players enable @s ipe_function