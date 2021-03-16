execute as @e[tag=rc_slow] run scoreboard players operation @s rc_current_step = @s rc_steps
execute as @e[tag=rc_slow] at @s unless entity @s[tag=rc_stop] run function rc:slow/step
#execute as @e[tag=rc_stop] run kill @s
#execute as @e[tag=rc_stop] run scoreboard players operation @s rc_particle_id = @s rc_particle_end
execute as @e[tag=rc_stop] run function rc:slow/stop



execute if entity @e[tag=rc_slow] run schedule function rc:slow/cast 1t replace