# slabbottom hitbox
# summon corner entities
execute align xyz positioned ~ ~ ~ unless entity @e[limit=1,distance=...001,tag=cor1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["cor1","box"]}
execute align xyz positioned ~1 ~.5 ~1 unless entity @e[limit=1,distance=...001,tag=cor2] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["cor2","box"]}
# summon ray entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","box"]}
# get pos of corner entity 1
execute store result score @s Xpos align xyz run data get entity @e[limit=1,dx=0,tag=cor1] Pos[0] 1000
execute store result score @s Ypos align xyz run data get entity @e[limit=1,dx=0,tag=cor1] Pos[1] 1000
execute store result score @s Zpos align xyz run data get entity @e[limit=1,dx=0,tag=cor1] Pos[2] 1000
# get pos of corner entity 2
execute store result score @s dXpos align xyz run data get entity @e[limit=1,dx=0,tag=cor2] Pos[0] 1000
execute store result score @s dYpos align xyz run data get entity @e[limit=1,dx=0,tag=cor2] Pos[1] 1000
execute store result score @s dZpos align xyz run data get entity @e[limit=1,dx=0,tag=cor2] Pos[2] 1000
# get pos of ray entity
execute store result score @s rayX run data get entity @e[limit=1,distance=...001,tag=ray] Pos[0] 1000
execute store result score @s rayY run data get entity @e[limit=1,distance=...001,tag=ray] Pos[1] 1000
execute store result score @s rayZ run data get entity @e[limit=1,distance=...001,tag=ray] Pos[2] 1000
# see if pos of ray entity is within pos of corner entities
execute unless score @s rayX < @s Xpos unless score @s rayX > @s dXpos unless score @s rayY < @s Ypos unless score @s rayY > @s dYpos unless score @s rayZ < @s Zpos unless score @s rayZ > @s dZpos run tag @s add stop