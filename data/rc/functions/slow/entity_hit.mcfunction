# for entities
execute as @e[dx=0,type=!minecraft:area_effect_cloud] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0,type=!minecraft:area_effect_cloud] unless score @s rc_id = @e[limit=1,sort=nearest,type=area_effect_cloud] rc_id run tag @s add rc_hit

execute if entity @e[dx=0,type=!minecraft:area_effect_cloud,tag=rc_hit] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!minecraft:area_effect_cloud,tag=rc_hit] positioned ~.99 ~.99 ~.99 run tag @s add rc_stop
#execute as @e[tag=rc_hit] run say yes
