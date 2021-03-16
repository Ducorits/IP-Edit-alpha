
tag @e remove stop
scoreboard players reset @e raycastCount

execute as @e[scores={r_clicked=1..}] at @s anchored eyes positioned ^ ^ ^.5 run function rc:raycast/draw

scoreboard players set @e r_clicked 0
