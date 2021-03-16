execute unless block ^ ^ ^ air run tag @s add rc_stop
execute store result score @s rc_age run data get entity @s Age 1
execute if score @s rc_age = @s rc_duration run tag @s add rc_stop
execute if entity @e[dx=0,type=!minecraft:area_effect_cloud] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!minecraft:area_effect_cloud] positioned ~.99 ~.99 ~.99 run function rc:slow/entity_hit

#particle flame ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s rc_particle_id matches 0.. run function rc:particles/tree

execute unless entity @s[tag=rc_stop] run tp @s ^ ^ ^.1 ~ ~
scoreboard players remove @s rc_current_step 1
execute as @s if score @s rc_current_step matches 1.. at @s run function rc:slow/step