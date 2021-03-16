scoreboard players add @s raycastCount 1

execute unless block ~ ~ ~ air run tag @s add cursor
execute if entity @s[tag=cursor] run particle minecraft:instant_effect ~ ~ ~ 0 0 0 1 10
execute if entity @s[scores={raycastCount=498}] run particle minecraft:instant_effect ~ ~ ~ 0 0 0 1 10

execute unless entity @s[tag=cursor] if entity @s[scores={raycastCount=..499}] positioned ^ ^ ^0.05 run function rc:raycast/raycast2