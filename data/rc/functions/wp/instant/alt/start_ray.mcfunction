# summon vector entity
execute positioned ^ ^ ^.0625 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["vector"]}

# summon origin entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["origin"]}

# summon block entity
execute align xyz run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["block"]}

# get pos of corner entity 1
execute positioned ^ ^ ^.0625 store result score vecX rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=vector,distance=...0001] Pos[0] 1000
execute positioned ^ ^ ^.0625 store result score vecY rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=vector,distance=...0001] Pos[1] 1000
execute positioned ^ ^ ^.0625 store result score vecZ rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=vector,distance=...0001] Pos[2] 1000

# get pos of origin entity
execute store result score originX rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=origin,distance=...0001] Pos[0] 1000
execute store result score originY rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=origin,distance=...0001] Pos[1] 1000
execute store result score originZ rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=origin,distance=...0001] Pos[2] 1000

# get pos of block entity
execute align xyz store result score blockX rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=block,distance=...0001] Pos[0] 1000
execute align xyz store result score blockY rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=block,distance=...0001] Pos[1] 1000
execute align xyz store result score blockZ rc_system run data get entity @e[type=area_effect_cloud,limit=1,tag=block,distance=...0001] Pos[2] 1000

# calculate vector magnitude
scoreboard players operation vecX rc_system -= originX rc_system
scoreboard players operation vecY rc_system -= originY rc_system
scoreboard players operation vecZ rc_system -= originZ rc_system
# reset ray position
scoreboard players operation rayX rc_system = originX rc_system
scoreboard players operation rayY rc_system = originY rc_system
scoreboard players operation rayZ rc_system = originZ rc_system
# calculate relative ray position
scoreboard players operation rayX rc_system -= blockX rc_system
scoreboard players operation rayY rc_system -= blockY rc_system
scoreboard players operation rayZ rc_system -= blockZ rc_system