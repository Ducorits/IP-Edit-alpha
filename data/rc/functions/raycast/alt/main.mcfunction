
tag @e remove stop
scoreboard players reset @e rc_count

execute as @e[scores={fire=1..}] at @s anchored eyes positioned ^ ^ ^.5 run function rc:raycast/alt/draw

scoreboard players set @e fire 0
