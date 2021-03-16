# generic hitbox
# summon corner entities for first box
execute align xyz positioned ~.001 ~.001 ~.001 unless entity @e[limit=1,distance=...001,tag=cor0] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Particle:"block minecraft:air",Radius:0.02,Tags:["cor0","box"]}
execute align xyz positioned ~.999 ~.5 ~.999 unless entity @e[limit=1,distance=...001,tag=cor1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Particle:"block minecraft:air",Radius:0.02,Tags:["cor1","box"]}
# summon corner entities for second box
execute align xyz positioned ~.5 ~.001 ~.5 unless entity @e[limit=1,distance=...001,tag=cor2] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Particle:"block minecraft:air",Radius:0.02,Tags:["cor2","box"]}
execute align xyz positioned ~.999 ~.999 ~.999 unless entity @e[limit=1,distance=...001,tag=cor3] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Particle:"block minecraft:air",Radius:0.02,Tags:["cor3","box"]}
# summon corner entities for third box
#execute align xyz positioned ~.999 ~.999 ~.999 unless entity @e[limit=1,distance=...001,tag=cor4] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Particle:"block minecraft:air",Radius:0.02,Tags:["cor4","box"]}
#execute align xyz positioned ~.999 ~.999 ~.999 unless entity @e[limit=1,distance=...001,tag=cor5] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Particle:"block minecraft:air",Radius:0.02,Tags:["cor5","box"]}

# summon ray entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","box"]}
# get pos of first box corner entity 1
execute align xyz store result score @s cor0X run data get entity @e[limit=1,tag=cor0,dx=0] Pos[0] 1000
execute align xyz store result score @s cor0Y run data get entity @e[limit=1,tag=cor0,dx=0] Pos[1] 1000
execute align xyz store result score @s cor0Z run data get entity @e[limit=1,tag=cor0,dx=0] Pos[2] 1000
# get pos of first box corner entity 2
execute align xyz store result score @s cor1X run data get entity @e[limit=1,tag=cor1,dx=0] Pos[0] 1000
execute align xyz store result score @s cor1Y run data get entity @e[limit=1,tag=cor1,dx=0] Pos[1] 1000
execute align xyz store result score @s cor1Z run data get entity @e[limit=1,tag=cor1,dx=0] Pos[2] 1000
# get pos of second box corner entity 1
execute align xyz store result score @s cor2X run data get entity @e[limit=1,tag=cor2,dx=0] Pos[0] 1000
execute align xyz store result score @s cor2Y run data get entity @e[limit=1,tag=cor2,dx=0] Pos[1] 1000
execute align xyz store result score @s cor2Z run data get entity @e[limit=1,tag=cor2,dx=0] Pos[2] 1000
# get pos of second box corner entity 2
execute align xyz store result score @s cor3X run data get entity @e[limit=1,tag=cor3,dx=0] Pos[0] 1000
execute align xyz store result score @s cor3Y run data get entity @e[limit=1,tag=cor3,dx=0] Pos[1] 1000
execute align xyz store result score @s cor3Z run data get entity @e[limit=1,tag=cor3,dx=0] Pos[2] 1000
# get pos of third box corner entity 1
#execute align xyz store result score @s cor4X run data get entity @e[limit=1,tag=cor4,dx=0] Pos[0] 1000
#execute align xyz store result score @s cor4Y run data get entity @e[limit=1,tag=cor4,dx=0] Pos[1] 1000
#execute align xyz store result score @s cor4Z run data get entity @e[limit=1,tag=cor4,dx=0] Pos[2] 1000
# get pos of third box corner entity 2
#execute align xyz store result score @s cor5X run data get entity @e[limit=1,tag=cor5,dx=0] Pos[0] 1000
#execute align xyz store result score @s cor5Y run data get entity @e[limit=1,tag=cor5,dx=0] Pos[1] 1000
#execute align xyz store result score @s cor5Z run data get entity @e[limit=1,tag=cor5,dx=0] Pos[2] 1000
# get pos of ray entity
execute store result score @s rayX run data get entity @e[limit=1,distance=...0001,tag=ray] Pos[0] 1000
execute store result score @s rayY run data get entity @e[limit=1,distance=...0001,tag=ray] Pos[1] 1000
execute store result score @s rayZ run data get entity @e[limit=1,distance=...0001,tag=ray] Pos[2] 1000
# see if pos of ray entity is within pos of corner entities
execute unless score @s rayX < @s cor0X unless score @s rayX > @s cor1X unless score @s rayY < @s cor0Y unless score @s rayY > @s cor1Y unless score @s rayZ < @s cor0Z unless score @s rayZ > @s cor1Z run tag @s add stop
execute unless score @s rayX < @s cor2X unless score @s rayX > @s cor3X unless score @s rayY < @s cor2Y unless score @s rayY > @s cor3Y unless score @s rayZ < @s cor2Z unless score @s rayZ > @s cor3Z run tag @s add stop
#execute unless score @s rayX < @s cor4X unless score @s rayX > @s cor5X unless score @s rayY < @s cor4Y unless score @s rayY > @s cor5Y unless score @s rayZ < @s cor4Z unless score @s rayZ > @s cor5Z run tag @s add stop