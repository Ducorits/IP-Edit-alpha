execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:200,Particle:"block minecraft:air",Radius:0,Tags:["rc_slow"]}
execute at @s anchored eyes run tp @e[tag=rc_slow,type=area_effect_cloud,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute as @e[tag=rc_slow,type=area_effect_cloud,limit=1,sort=nearest] run scoreboard players set @s rc_steps 40
function rc:slow/cast