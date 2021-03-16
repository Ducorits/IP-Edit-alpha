# set score that gets used to determine how many iterations are run
scoreboard players set @s rc_count 200
# remove stop tag
tag @s remove stop

# summon area effect cloud to be used as ray entity and position reference
#summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Particle:"block minecraft:air",Radius:0,Tags:["ray","rc_instant"]}
# give it the right rc_id score
#scoreboard players operation @e[tag=rc_instant,type=area_effect_cloud,limit=1,sort=nearest] rc_id = @s rc_id

# start the loop
function rc:instant/loop