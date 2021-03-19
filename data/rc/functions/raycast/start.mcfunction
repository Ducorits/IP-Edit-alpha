# set score that gets used to determine how many iterations are run
scoreboard players set @s rc_count 200
# remove stop tag
tag @s remove stop
# start the loop
function rc:raycast/draw