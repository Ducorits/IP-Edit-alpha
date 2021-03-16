execute as @e[scores={ipe_menu=1}] run function ipe:menu/main_menu
execute as @e[scores={ipe_menu=2}] run function ipe:menu/rotate/rotate_main
execute as @e[scores={ipe_menu=3}] run function ipe:menu/destination_position/destination_position_main
execute as @e[scores={ipe_menu=4}] run function ipe:menu/dimension/dimension_main
execute as @e[scores={ipe_menu=5}] run function ipe:menu/mode/mode_main


scoreboard players reset @s ipe_menu
scoreboard players enable @s ipe_menu