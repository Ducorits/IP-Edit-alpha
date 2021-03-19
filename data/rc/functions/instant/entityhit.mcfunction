tag @e[dx=0] add hit
execute positioned ~-.99 ~-.99 ~-.99 unless entity @s[dx=0,tag=hit] if entity @e[dx=0,limit=1,tag=hit] run tag @s add stop
execute positioned ~-.99 ~-.99 ~-.99 unless entity @s[dx=0,tag=hit] as @e[dx=0,tag=hit] run function rc:instant/tag
tag @e remove hit